Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6907464
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756265394; cv=none; b=Asv0q5PzD7ySbY3yuxY9sV6sjKS8Wf292yZBX/OzW3d/wpGViBGz5OSfsn9KxG6X1vTmhSknE2Pcuxh56K4LNqQZgSMVF2z2BjL1FZ6k4GVLFKX/7WP51hZRVz+YZtStK+CXCWfXxymsK2bJaX4S3SoKLnSDpWowFPAov3eIIgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756265394; c=relaxed/simple;
	bh=UlAIBGs7t/dVbe4qYeCkAoAqVn4ZWaMAC91tdA74Qi0=;
	h=To:Subject:From:Message-Id:Date; b=SKO3M0+x0UN65V4ejuYakzNWldkFi5WjYBwi7zoZLwopm/IQbbigrm2/YMYwLNCz0W2WfLzoYe/uKn6MV8pWJNacwDRQOzyhI+0uv1QKKM02plMC/xnKdzOSU6IdRkDiVLGO77dDkuVCdYhRcvb3uc545BxuaHz5llvcvAhtNwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPp+CuC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPp+CuC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9871BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756265393;
	bh=UlAIBGs7t/dVbe4qYeCkAoAqVn4ZWaMAC91tdA74Qi0=;
	h=To:Subject:From:Date:From;
	b=sPp+CuC00Rs5VqS8yFOU+RYAvtlDNXHlvBC8ZhAyEowaEzKujydopNEYgy0vcNXQ+
	 G1m5L5fCStBo5y0t60KiznGVnDRmcrzHVMU6aKVKzuK1Uzd4lr3pMCdvmbOZx0vfBk
	 k3OPxwPxwBrv2Js0O1sGJ5zQlEZu1jG4QbnUMj/T1qIr+oi4Aey9H4j57UPBVYPWKV
	 eEoHLwpiiADXHh0Ss965cftKeuj/NoY6N8jY38QVGlT6GrDV9yv5IOuGXCWQNZ1YNZ
	 z9z32J8jeJ3rDa1VINag5DTXoUDSRJkHi/3T8eNoeRUl6g69J6uc6F7NtwL4TA8MC3
	 jdUZ46II3Uw9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8DECA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626539357.3090.16602176994044243072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5573824172571f96b708abb8b924c2bc8da2820acbd75e77198ff483f09e30d
Date: Wed, 27 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756265393
