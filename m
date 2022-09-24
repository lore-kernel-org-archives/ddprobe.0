Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4E0B3C1C
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E88C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664059853;
	bh=z1GLehsLOm8IDH1S8+WcF9A7tQCGjUiY9IKYuj/OgrI=;
	h=To:Subject:From:Date:From;
	b=KjvNNVOoFI0EVe/aoBa/RmpVDj2KVQTw+5x88do5zP7r0JvK38p+GWLdvapK1WLSQ
	 Uose6oKTumhmdFsdn1/K+K8OH+3fgfIC6CkgxsZ4gHfHQiIRkIgQByO9rQ6Wx0rNKf
	 g2qQ2L7MY6FS1aZvDRNVbiNcq98djs52UqblmeBb9b7FY9Z8adoIWOScvn12uccjRF
	 Xvwjy1Eu3GtH4hM2bEyUa3Ty0HJOrCKX+5MwM95X+xcKfSx7AXh3fcI+Q6DzBpXsz/
	 kcdiMwPcZkb40GKk4Czvziuz6RPPfOA9nKgACJLRYsflqjpyfgje07LPsUXe+7AQbX
	 kl63n6gReQmyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A40C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405985333.23328.14283066347398676055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a6ef7b06475c65d831246e4ce839535e6c055662f54408d326c3c75f956e7ea
Date: Sat, 24 Sep 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664059853
