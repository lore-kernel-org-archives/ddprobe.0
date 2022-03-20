Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E79B20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647744384;
	h=To:Subject:From:Message-Id:Date;
	bh=l1pVyjlnrERa0WxwNoPwDfVxbK1gYwcL9Ayj87BnmQ4=;
	b=ZbW1l1QyHo1c0Eo2cGK2p3vmMdQoYupfXRPjnI/csT5xPjWnIIMg97szIPecK+Qx
	Y0ErIzrmKJ1bw7QTH4A8E3NrPBQgOAQVHnVFaN8Qz9taMZByvbRngkBPgMQ8mNcJ0X9
	GbUXqEgwhuswYhjKibcW5J+6RTUSrVTP2CUz2eNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647744384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l1pVyjlnrERa0WxwNoPwDfVxbK1gYwcL9Ayj87BnmQ4=;
	b=Ta3ksGKa1p/yG3kLb817GGmMlT3tDlTqv2gPrmmoTLgi2QQyHb33RsbTiraKp0jB
	bLZIbJENU86RUc4Of2Hp58ZEKMJLC5sjxNIfuqqQGP21mrCl2VCabDfAaA9FiSiYseV
	/EwP5Oytlzes0OPY1QJiN+zRihb1UdkNW39Zkq2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa537feda-3b2a648b-680e-4705-aefa-df73735e556b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cabbd37c000ddc5a9492c309c34b5a5ded6d2f74bf7e4fd2068446f20fc8182
Date: Sun, 20 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647744384
