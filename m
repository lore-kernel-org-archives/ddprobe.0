Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445A71FB1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659151852;
	h=To:Subject:From:Message-Id:Date;
	bh=tgZaUbNPwPHGoLGrTIhmtqkTsd2+W5zQHsNtnP6/cEM=;
	b=RN8MSD3JKb6otg+vY6jvvgBP/iocKz2Ou2h7/MOz7TukX0na6Vjs1qlBAVeDDynY
	ajT/fZQMUZ97vNJb2Afw5MuRpctwd1YR9MAQ/m8VngOEXxPrDDEj+GUrzOYBH+GQ14F
	oVL7aRQDznU7EPLP1kbcErPLX1LpJCkMDjvgKGcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659151852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tgZaUbNPwPHGoLGrTIhmtqkTsd2+W5zQHsNtnP6/cEM=;
	b=k5dv3dkZNhe1gD4Btb4NTPCoLbzRkrL3h/WUSu07MnrIDiibSKD2M2OtgOfU2b2h
	zfe0KHQVKc4qflpLM/Kf5oY21M/xQloUtLTjozMX5ZxJPqNQPiCs6Wet1u2qaWt+G4J
	IQPnxFmfbj1QGSpCVlx0Y26F10+4dv/UbzmjX4Q8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d2823f5-da3afcc8-f1b2-4d2c-b813-bfd5d79ac56d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb0b40025da3b403a733f41c57224ead69cd71ef5f679eed45a7c4fc12c35551
Date: Sat, 30 Jul 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659151852
