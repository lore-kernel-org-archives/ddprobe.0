Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C36CBBA51
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8098AC433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669844454;
	bh=9abHsG2B6AsgmLjhivQgqrnSHdLrQSz5fIj8S8LMRC4=;
	h=To:Subject:From:Date:From;
	b=CSWre0JbYfL2AMIK0TXUHesGAtiZEgAIpKBGaNif5fvMMvA/sHsbTrjaHyZamMc5p
	 /T5CIRg07wDeO0p9XOgMM0HMdZ37O21W3GMyF+G3GhGTiSP+S48J1fqOPE1/LHM1wK
	 kzWf8STlPTFezFxg2mXPWWd6tTn+XytX9RdH1UkIQpkEM11Fp0es/7+lx++ZSo5v8B
	 vEvBm/GmW1ZtGRdOXBT/lhAlRE9dccb6VGyqbIo30boZ4cXQrZ2V31D/jna6meCI+P
	 3XQKxWLauwzNMxo4o0NjyuUB7A+2NQwM2jkgsijLmlxFajhKqz4tmfU7x1sch1aaxf
	 FGGd8DLmVQSLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651CAC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984445439.5159.8583294079723103102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359656f9bd9cd7ab4025ff74e59fad50833a23549dcadc3b5f5fe3cd57cbdccb
Date: Wed, 30 Nov 2022 21:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669844454
