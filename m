Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94C6364
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71F2DC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666513853;
	bh=0CEzOTkcumzlildtJ8b+2pDoAdcYCJaEHZjeNSaJtYI=;
	h=To:Subject:From:Date:From;
	b=Cx3RDkA4+76lY1m78r/b54PO4onoU41T48njOiNCoJX0ZjYZv0Z7cG+ODHGYtJ50w
	 O1olwWPSlMgh4r38VOpnX/AnKauzuprNK+LiSks9JRXc5vioXBHtfKRetEiIOFxvqC
	 mThXFqvd3FPVYjbtUANgPOz8a0Wi840OPYKNxnmw8ZS9JwAeadYXi7tujPQU6f5ja+
	 55HUlUXRCyp7asm+dTh5BhOjS0Mp1oufr2jp+8ZDVEsNfWLWGtQ32NA9m6WIk18aZg
	 BAj9F7j8IeAiYWxHD3BaVf24WdIaHQuSkMTkJwZC/D+lMFft8I6aUd56idLIF5dzbv
	 7kfOewaJmRkKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AD4ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166651385333.29876.1707577872524084004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df943eed4ba064e1ee48efa321616d32db8f16fc9cdfdbf8c8bfebd39717c1a1
Date: Sun, 23 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666513853
