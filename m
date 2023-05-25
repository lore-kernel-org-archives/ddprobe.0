Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46ECBDF52
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 11:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC811C4339B
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685014506;
	bh=jVGpQpdbIL1FRq4w+QjKebpNhJZXQK7uQEm9B0tKcEs=;
	h=To:Subject:From:Date:From;
	b=sXwf2QbBKCTU7PtfmpmzeuwjNR624Vblm5ka6BH+jbn+wMr2P6WgCG9RNnw+5j91F
	 fYdtj79a8X5TZXzWPS/TNcAMIGWrolj62bflHrkAZPKuhUAuw/uvpTq7UE7sdUCUj7
	 WtiZ5zr5r544nOngQgWfdwyEqkjEQ+fMhzLaAUJxrZwJtiXXV2jpBL1eqaix8j505q
	 aQir7stp6vrBgwa/KC++fMiZz6xc+lHzPzl7ZTKTDKhj6Uw1LsFwiPz9ZuhCugnx+r
	 E93g9OZdwS9mVI/CSer61t5sWFZ0QpcDNwmAlUdB5rG3vNZCnPfthL9jXOtoNKp5ew
	 GFJE6/Uk3efxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11EAC77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 11:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168501450584.11522.8114097367070173625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4332e41d92307354bd2bb9b98311863fd2956cda86c4f895f1f76b1d5e943f76
Date: Thu, 25 May 2023 11:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685014505
