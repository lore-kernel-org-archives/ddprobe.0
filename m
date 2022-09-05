Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC3DF161
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 00:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BADC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662337253;
	bh=ppckFOCczXbFx2SlcZJ1M+2xLbVvAuW6fg9KrZlD+HI=;
	h=To:Subject:From:Date:From;
	b=ghnDv7TNjx8kH04CZOFOAICNBBEHig3/1wCr5Vb+tMOBo7GdhxZ1gQX3yOhquf16y
	 OjvzsbbagMpxGPKuUHSngDve0VNegIq0lfvVQVeTAHjAu4pG8IEFKRxHZ1MryIL5mU
	 xJuUoWO76LtUQ8R7DU4poAPqrrIbvMyVEkCbp4QrX8f5/hU2krMamPal9xva6O/kO2
	 Ehzpss3VZdvTpzyQHpSKH4ltalSwAjSvZeJpn82pF1LieYPJYz/a9xH9fZ78FY1onE
	 kbs/NeWtd2DV7/ZDxBj1KfkhqWtoomo95dfi6jhjEvBManvuApEbW1JC5XgkhW8dWP
	 QUS2Rnb9bk8VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A22AECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166233725332.32622.11223601478737777135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e24e836cb8b0534fcabaaf4353866e7c614585320c66c06f4840bc863ef9aa3
Date: Mon, 05 Sep 2022 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662337253
