Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447B433E9
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 21:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650835618;
	h=To:Subject:From:Message-Id:Date;
	bh=5Ttc3q950sLWRXsIipyBzhIxmKXapM4M55DKIyKffmY=;
	b=FhdjM7rwemLCwNMCVUzZpiricZqyVja7P9N7Q4zVEcWuc25y0rMmVOBplbWS3EJR
	BAtkNQ53L/0A9MPOczMQ1GL6OGUEZ5eTc2wkdlVXPyro6HTi8nQFP992SfBRpcrpN0W
	yR2n84K8Tjxk+JmQv5T9nXp10T2zXXPUdtWfQXAQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650835618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Ttc3q950sLWRXsIipyBzhIxmKXapM4M55DKIyKffmY=;
	b=E0dwit0H6aqiurklPNV4jVqpM3gcfz9g5a/5ukmSi2vtfIZTWCrmHpTVHkMLu1ah
	TAL/8PXRE4JaxlGxeoD3gz0W+Lbw3A6WFHg883VM/W1Kgvxw+8q7qSdW92D7cFu22rK
	NMdGEpsNxCjHqqkjeBD3eq/UHSfksCW6Aok7q4Ts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805d787a44-b4abde10-916a-49b7-b2ba-28df325543e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92d67c392ab56c529036063f17d6fe093d2674c70759f69669127ad67fb1ce05
Date: Sun, 24 Apr 2022 21:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650835618
