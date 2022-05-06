Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2446A363
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 00:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651797178;
	h=To:Subject:From:Message-Id:Date;
	bh=ZL/C3BTMwv0Sqb2yO5YZQOLUAwp8w/BECcnCt9vKf1I=;
	b=X7Lq+H+CFRckNEjXI6G3r/ss0Rs0jHz1+neLNBb5+u4R171Ss3CaIdZSD8CW0ydQ
	ykL9C9RJmJTX4piO7mokyl/beNnMZrrYDqiOyQyce/gX3pNg6QCMDrzRtkO+kfWIbK0
	D8kj1mkmytoCOqLsl2Did0fMmUVteoi7JhTp9+D0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651797178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZL/C3BTMwv0Sqb2yO5YZQOLUAwp8w/BECcnCt9vKf1I=;
	b=S1K+58v4ViSBurcAfZGUZDjHmHXHiZ0HIl6JHHgwiVMRCecbJabs+BVwovxhLZ1j
	IRFhXp2igUEs90O/WXYRv9b8UzNcBlJoUHZE789rqdezUT3HaKkyPi51RyU0iH+LJCl
	8tpd31sxYvA4+gB8pksrPJSl7xREBsLpiATPgitw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018096c8b7b0-f5fe1a51-b6da-4e24-a570-afb4bb3c2f9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68e78822eb96c01d1e46ac0f46bbff28e44bfed88a5c72e42b22aa4baca21fc5
Date: Fri, 6 May 2022 00:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651797178
