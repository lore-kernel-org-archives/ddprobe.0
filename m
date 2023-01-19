Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0894193
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78494C433F0
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674097287;
	bh=yGrSHPeBX5dwfQ2oRBVY2yW1mjil6zOKeHhuXMdkWp0=;
	h=To:Subject:From:Date:From;
	b=VAeJhOM03KxAgriSFAeFuyI+q8u2LacEMtTOuOf3TedCuKyh89hK1yOrUYb6MH+iI
	 o05u5I3RFl4Z+Wj8AFXOmpKZjq1wcdP4xzzQlatyGHaKn1i+Uu7H+tweHrFPcWQ4lz
	 zOXIUvSMvwUOZzQt2jOZIkr0WSRw+JcIC+ucifJK7G6xXyTPmbekh9yNmNgeNFPxhP
	 4uFvFXaITbBOSgbzfoY086Kq2+q6ZJ38LBH0qmpIfLIOXeCZdxqFg/6vHEAdl2csu1
	 MlCMBJ2wzI9coz+Kg6GNAawMZaaSxbJsJJSfit7HuzLBNcQg3jMc9DP++5NdTENmLE
	 jrMubMC4nO2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6B2C38159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167409728737.13434.17930839924191537060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de519538bc021c6512d0429c7cac8eded99c13a1bbdde174a362f55723d915b9
Date: Thu, 19 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674097287
