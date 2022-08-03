Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520C04C60
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659565252;
	h=To:Subject:From:Message-Id:Date;
	bh=WJIbhuC4zFH6IacT6L60w82qtpJQoqpZT73+aJXDUYY=;
	b=IHloZaaBV27d8cE3nE53dceiP8N+8QRSBuDIFHp3kd0aTK9EzYPGD9l2wAQB482z
	bao13A87pjyaxD3v7UEztB4//LOg8a1tXFHfxyle4hD7fvYCi2PtLGgCEvCpyb88xYa
	uhMhDaqKbtFUXoTEayWv/oOcm1+/maDH/LiYmlA0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659565252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WJIbhuC4zFH6IacT6L60w82qtpJQoqpZT73+aJXDUYY=;
	b=QS7r+MCgNYKXYliGHqMbgumvC9V84ClzsZ6qpfaIz8TFD+C4OZFac8UKcqG4rloM
	zrfDAtUnNs2mHFTfVRSUpRhYqUtNE1NsalbUED9YHufpiiOv2/6uoWRvDWIrT8diygv
	iJz2k40h0XJgy4xylTyj5PgMKFkwLyjj5XYzytI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265cc1feb-b9ebf087-d75d-4d27-ab4c-633cf9045459-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ceefe590353fcdc75b30f956579f0a0d1ff4fe9259fff44c371ccf06b28077a2
Date: Wed, 3 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659565252
