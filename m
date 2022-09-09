Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0850622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72178C433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662694253;
	bh=gkuMkdUV+Ot64VNzXZqqvzS6M8RBEMTXydLnn1UEkR8=;
	h=To:Subject:From:Date:From;
	b=mbGcoXIa491XxTl5f3p9OoxHaL+jLH9NbYv2Y37pIcaMCQRTDFiOSqA09BLG3JqoI
	 5HzP1+NyNb4dVGKNTbzWY6HjIocwC8EFqJx3oURL4haCpSyMeQzU5BOJY1uitNSG8s
	 ghQPR8iWALYEs+cEIIZnP+gpR3GKJSlI1DjYmffAY8MDPdX4mnc8pKlhWF+QpuD+f+
	 XhDj60ZdppPRxTXTSzjMvJWhkBvGG9qziqFi8meZf47ULPgdTx4smmRicWRpQJMAet
	 zwLI0Oj+tudadtx8Wb/Lr16sL1HJPXXRBG2eJazQ8hBjIpB00aPkRILBQWeKJLqw05
	 KeBk6mq8XDoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581CBECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 03:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269425335.26962.13320134000470881420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 765eed899fec8d130160fdd1f2815e386210b63df692cd6101132d63db2c062b
Date: Fri, 09 Sep 2022 03:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662694253
