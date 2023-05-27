Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF13A20
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BB9C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685161685;
	bh=vYV1UsuPQKxdnd/zE+ZrwmQrvzUII+CB092BvVDs28c=;
	h=To:Subject:From:Date:From;
	b=Y3rFSRHC43iuRQ9gdD4qK2dvHuT6x/URxukEcZs+krScaEnh5REQFDYgGBD8TKkp1
	 AFkF4OTl64iKyA2CcRhGtPEz5wh0gMfwXftvwV8Gyrt7MtZorT3iDi5AIMSEwXrDCL
	 hGpuR9v/WI3ykeSQjSPRldSKDenS4BKJ9Iz/YPZHCmPABpqnEy25JEHCHfbgEkrQjV
	 SXDM8CDRIxFyRRyKZs5gUGmNyLG4BlMq7dWUidy6o/p5rIReUZiTtrThZsZxX+A4Xt
	 tCNaKc4O91vK2kKnT/2pik4ieAAZQchvMtWosNgFrqLqgYFKijIzoKBu9muEjpdZZF
	 s5T+TMjvsIfFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C309AC77B73
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 04:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168516168575.29382.13399334052821150075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d54b2bd266b35b69ae7e817fbe6deaf74333c82db36ae9cca465fc0da0ba32
Date: Sat, 27 May 2023 04:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685161685
