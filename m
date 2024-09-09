Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150793CF51
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725912954; cv=none; b=Fz9b5xp8DoIjOCUgUBqbe8KUHTHdtjxgmHYai+OmgaR2eVrqFDAVXdLS+3hbvOgRwZclUGx6zA5mmhRLmcnvcfPWSQE/amH8PFMyp2sMQK2kXpOFzpHFbrbh9BM//4AKItHKrZ9L1r1we72+upvi4CmR0ag+2GeirSlvjKbLj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725912954; c=relaxed/simple;
	bh=nWe56tiemIEqaKdgMfv73eNrIEVzFXiaJTciVbiG8ZE=;
	h=To:Subject:From:Message-Id:Date; b=G8XLaO+q5EUL2YXrF0zdh/j0aFxaZg0zdvF2Rc/FiBmkWfLH3o8j//Inh6fxKS3aI4XVGxC50u+ZnZThRWeSz8yJp9Fetmf5zxeRe3dZJmmYmlm1MW+nPuloTYLEwd1kI8nRZd3EizRf4K15Q4tbG1IAeqOMUqzbwZcOhfsbIVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBM6JNKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBM6JNKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8F2C4CEC8
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725912953;
	bh=nWe56tiemIEqaKdgMfv73eNrIEVzFXiaJTciVbiG8ZE=;
	h=To:Subject:From:Date:From;
	b=aBM6JNKv6XS3+AoHC09LGMdLK2O5Zj+7UMIRb5RLwlTjZALwagodeCM7h0Zdpcg/M
	 wqSVrMDF19w58nrclCYw4pe0GdKl0xOPfQQKaqzlI+mkwe5DCatPGEwRU87A1rhqPU
	 RilPJ3DwaQm/TAgc+rxXY6HD6SDDg//ndiS7zK39rwkgmgfjWReeAxw6b5bCdDjpGk
	 hJWy+omXzRyxjiPpPc933KzK0ITEVUzqg0yhjdrp7Wf/s2oD1B8jKFiLKLlAKZHmp7
	 F/KgzeDT5lnKG+cnGvEWgBimXqSRGoxXT9NJ25T3gAv47N2wK0X6DAwwxUnjQ2OpMq
	 eP7W0l9gqHHhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DE1ECE587
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172591295361.31424.13758633881077760960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 500ba7f5d30b0e345fffc4f0aad8fffa8460a6f134504b753a3df74f56e74cfd
Date: Mon, 09 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725912953
