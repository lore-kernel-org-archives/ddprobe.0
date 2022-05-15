Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90382F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 17:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652636579;
	h=To:Subject:From:Message-Id:Date;
	bh=MK0tIIsgRA57EOZhv26IoBAMn2d5sIqJJ7EzrIRKIpo=;
	b=RncRXBCFkDTmbFe5axP3TM+f8jMcOpI6dACMlr2G97GXdUWM3Ewz2p27Ln7VH4YE
	xNRqfLcUwIXg2euCxvA81bcSfO/l9lPxxw8cat3w4f1d+4st8kdzujBHu1rvS1Cwo73
	7viy2LN78Swz9MOon20dSVkG8oT27unSIjcjjfNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652636579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MK0tIIsgRA57EOZhv26IoBAMn2d5sIqJJ7EzrIRKIpo=;
	b=QKve7I6arfFS9r6M4jFdAmb91vthhMzSyOt8pUomI4ESl6IpE/BfcYlsPMnqcA/b
	ykwFkiMoTEALHd3VkESu2oAgduIsrJ9aod9tEZWWDjuSEn+Uq/h/loiz65zufaKPHZa
	ov+a9DIuML0TL+nfq7ppKDJFHiCCal3GIYYC/a2Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8d0f58f-5e4bfd14-703b-4d21-b5b5-588c38452746-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 95f9afd159c96d84f0e2a61c181324c489bd3473d7327e3bdf4518fba289fba8
Date: Sun, 15 May 2022 17:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652636579
