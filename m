Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA98228E0
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645864584;
	h=To:Subject:From:Message-Id:Date;
	bh=bgFdlJEc+3IKDggDzlt9hP9Jm/PI1ABdosHmfTgZW4k=;
	b=B2qRfdc0H3M9Qr+CcLuxIc29tS7yQMAxVh6U5oSJdNSj2zPJT7Bufx8QcvySfQpB
	KCv0GQpPzIgKgbou8ctJsF5Hd1UMnEse5+Zlhoc5rA83QwpwJ4cO6T0CqH3OqmQcIRw
	lvwRV0Lcl7/tv0ijqLzx0nX0Q/K7sBlR0ksoVqcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645864584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgFdlJEc+3IKDggDzlt9hP9Jm/PI1ABdosHmfTgZW4k=;
	b=U/f5pOgAb7u3aPJssaZYJHpoJtiEhumlTuTgZ2m1Mc38/Ob7nyGnHgJvxMWjVN4r
	rQAI2lX0y+Rym2N2vmHxsl9d2xDJcVSrLE7iHkCRh/NyKA/g0CqY7cZifoP8uL/nVe4
	hx7KpqihvTEwIT9rrmaBSbsFKd/qdEJ2NjYwUYak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f352c8662-78913077-9b67-4cf7-85e5-d52f09dd8425-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dc433ba2c1f763835487b4f55508605838c12ba0866d179b9fbb2f016ce0184
Date: Sat, 26 Feb 2022 08:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645864584
