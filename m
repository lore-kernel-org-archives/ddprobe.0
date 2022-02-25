Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BC23667
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645827085;
	h=To:Subject:From:Message-Id:Date;
	bh=VeQVreOhwxwoeZnydLkfXrg0dKy8QkZVyQ6wPLEMUe0=;
	b=aS0fAeh0Z9i5pL+zCAg25ZGc/Fj4Vj/S0SVJz9pWCl8WT03jtVEnu7He21O5TsWk
	RC0PKDW8uBs7f9Sw9wuJI6/U924h1BjVX/RWe1/10VnVMTRzBKRUvVdCu7p3Nj+pzvI
	ZM33qafTPmiXNxmlkiWQJS71/D+jk8sbj6YOymK4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645827085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VeQVreOhwxwoeZnydLkfXrg0dKy8QkZVyQ6wPLEMUe0=;
	b=ciXZ5IQURpFdve0t2J5F4AMwRd63ipU5hxKsjwRHoLQWVTjsHaZz00ErwcEaIElI
	3rni2sykknIs7x5FN1CFqleilLNigtcHeReFxNFvS/uNUxWqpqEzWltnuTU/EMhKYt4
	GuN7aZiI2d474ElvwK3QaXLRdN4Y1ynVH5S72AV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32f05218-23f06377-832d-4054-bdf7-b75e158db5e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 350ea72fce1427922a5dcc21ec8d34fb35db9b62cf539c6aa524873857cea76c
Date: Fri, 25 Feb 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645827084
