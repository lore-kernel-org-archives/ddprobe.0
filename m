Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28599156E5
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0fGDr/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A688C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698249496;
	bh=lJ2Xem2JroVFxj7YsqGP9f9FOhWrDLhlfOGdU3nog5I=;
	h=To:Subject:From:Date:From;
	b=u0fGDr/8fQJmei+v6ZzH3bZ5IDQS6UEK9InIMeYakqkgasicWX7ukXIAID0DGuyaq
	 8xM4pwo9v8+Obly/lcxzPwVGxDRk+7hX2bY1gsK2KJzg0r3CpS/gnVcYcFX9W2Bvj6
	 AXE2ZRZY6+8LeLGNUF1t6qKiLzfixUPXwv+RjdkJ85OMky9LGXyi3LDPczUVPfSwvJ
	 tPnjnR2Dlin9a7NrTR6awkcvkIQUBmf+EDGlNM73pqHOTCmoPXN7EpP0rzculSs0Qm
	 d42MqjecRh6igYoyRYx9pgizCNFptG9vUORjBFXyEbg+JQ/soVprWxLd9/uedcE53G
	 3Rn+Jd31pmbCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B508C0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824949642.16891.3417355382037335716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 001f1aceaac52f065410baafb19e77e70a6cab47425217a770b3008a0b4afa17
Date: Wed, 25 Oct 2023 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698249496
