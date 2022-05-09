Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF911865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 12:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652098438;
	h=To:Subject:From:Message-Id:Date;
	bh=jRKvZd4JmnulaomkcCYiz6BP850l+ifc3FB5MFRuTtc=;
	b=R2OS0ebmpIFvyD/6dFsHJVCZ+eJDs1aU87rzzaFcoinHu7HyQRNVrkV46b7bOsxg
	RvrBSBP/mfpr9J/HSsbQsYZbzyeAIDC2HeccGtAwARSz8dbUdyLJweQf0tL0+DwKhmr
	pry3LbehHqbSVgRwi3u7UFVGKT/7QzHv6INAfGDM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652098438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jRKvZd4JmnulaomkcCYiz6BP850l+ifc3FB5MFRuTtc=;
	b=gAMK9c7+Tj4yfgH7F0XYWyEyY3mJKJ1fotNqp8RXaXinvb1wh9BgIbNzmSr8fb9G
	PnNVRDIzUjtE3pVVO4y8s+fvtp0lglj0AP4jMBrClAySsrZSPEzZ9LH1RgXwAvh+zeG
	XSdy/EZQNMh/JUTSxEPEPdO7/WvVH1+oA36brlYE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8bd9460-85d4983e-b32f-469d-a027-70a071b1d202-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62d93dccdbfb08822d230816e532e8cbcbda2244a17340fab50536d32471add4
Date: Mon, 9 May 2022 12:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652098438
