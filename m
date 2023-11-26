Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC92320F
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D78nnxgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F87C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700984296;
	bh=jkyChYvrwpJuNLsblM3zac7rkTkDvh8hkPko/2rOC/0=;
	h=To:Subject:From:Date:From;
	b=D78nnxgfyWonOorb8a7Th56WTh9NzXGk57Q5vQ6h+hfd02l01wX203RJp+0auhAKi
	 nO2xzVn9fxvf8RwVG4bXLjm6QQkVd98tfYEYk4a2RTYq7GM096nF0Z3qtE5gout86n
	 +Sk9jKMCEsiEVv5IgOvnso5A3ytRuHY80vRC3SRWG+EamLuDWt1vQjK1lnDIZF2d5/
	 7v2ITcPEpzKmashRzg4r2IRrfVnxIR4CVgmtLDnDPS61i37E4eC37CiSSN3tRzYLqI
	 EKyWSJwTZAbWAK80gVXT3HIkNaw7QuMgqJ+nzBpPpgV97rBSBkH454lyIQp5zYYvHV
	 QY8wROn7OTU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6434AC4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170098429638.9644.2312059885490169872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2331053293e75a5b20275cdaa2121005db6f2504b2196c69e477d5d67fa26bf1
Date: Sun, 26 Nov 2023 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700984296
