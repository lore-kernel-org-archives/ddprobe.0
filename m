Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB391FBA
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A7AC433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663818653;
	bh=jPYDh4gXBA11wZR0zAzcQSvPY42zsQ10dGJCLAGiUwQ=;
	h=To:Subject:From:Date:From;
	b=stnChiUC5jovqoctifBBMKc5ou0q0/JHQcZugh8ivIT8LgoSV4h0HMOHdyBi1C/lC
	 G+Ar9tOytOVnhc8Cy45wUYMYEwlafQXDkv/stIFb+o/ED6dP99YqCWseFtXgcd+JTT
	 jMNHbQ4UE8DaNSjjQ3/sS3ACua0gPZIZIV7S1FO/3we64UmltX1Edj6Hf48iqfsYHV
	 P88xuCQizhjRrr2y3CCKnvG2GbHXi2unaSWGH3BaU9rsFEuyBVC5MpJ0CTXaoDqnMs
	 MRHVHpJfQiPjgXeLX3KjjlB0qAcS4ckR4OUf16zZImNFFFj1crBcvYWHzR3KatqGdh
	 RfVyjY5slb9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569FEECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166381865333.8541.9076894181455393781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71de7238397985b127236c8a788f7b5b6f17b2dd38e46f388678d988effcdfc8
Date: Thu, 22 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663818653
