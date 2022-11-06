Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D855C28EC
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 15:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FF6C433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 15:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667749254;
	bh=X0OxOaI4hJr6nFT9teDss2umRSDDBJEIzGNWZssrfg8=;
	h=To:Subject:From:Date:From;
	b=YB/1mN1/zWzQ/sDaWxYLDy/Zge7tXinwVgEAg3pr6cXWWvf4+43uX1mQdZb0s24Rr
	 4ReSD/B6b0OlOXNTzvO0vtchSiojI51hDSZTRGi7txQd6w3+GEqXJIuAx5B605ybZI
	 aCSKYhsSypYk5LwFbZs/NULG4hWPKTDTOI3babFeKo7NxnycaoqSreKBRtCqHM8hZ5
	 e8kn9xfHLN5TVQ0r8R2eEFLpxGodOkXongkIl+3HnRej/ZHZgKbn6P6btJkT2guyBz
	 NzZ0aFiC8cLVVThM9k/Smzgq/o/ataJGgBY9aW2p8pe9v2neSrrZ1ToyPF9x7U5H3d
	 zBe6jQ5pXx2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F410C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 15:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166774925438.11087.1617125420525928910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd43f42982881c6c400616d62ecc4f0a44f7a3e41cc832019e65e4d03011ff84
Date: Sun, 06 Nov 2022 15:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667749254
