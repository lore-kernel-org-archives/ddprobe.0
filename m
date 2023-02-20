Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3233929AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 10:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3445C4339B
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 10:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676889485;
	bh=r26+G1ijt3yG0eBXzCuYES2a7LMoKv6EpOvomeS3DaI=;
	h=To:Subject:From:Date:From;
	b=sxdJWdamFc2Egji/R12uNuDL6XRRhtYcE9o2oaCzsixdAcm77wHamsuWp0mb2TF5U
	 Vcz06OQgRv7Yv2Y0uLyWIjusMFfGnWx9sz1TALXNP4OCSYSjRpejTFuxUWybuKCGAg
	 8EOm62uvGUwaazi4HEPZj4rrpvPfhaBHCvAMXR+UKcqUqKR5ZS0E6nSG9YjM4IcPPK
	 ejxlUSPVL6JEkkhVlUq4k9XaLjYLzYmCnzJ2ZiMNNOqNS+czDsUoo3ak/fT0+gicRA
	 JFtSp36HIZbOrsQkrtBC2z4G7XezEr9bwbER7qpDqHYIUTG8kvU5H54FIDUvahrd1Y
	 StFjKkl+oE3lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5797C64ED8
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 10:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167688948579.27375.171523502436241303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8946b463519e9a39283094096bbcebdce3023cdf06f9f4afffd50065c28e9541
Date: Mon, 20 Feb 2023 10:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676889485
