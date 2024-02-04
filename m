Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BB279D8
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707020897; cv=none; b=uMY6s5hYbBlnBwNHP8gJAtgCETbKqEKQ3IFZ2UzW5ytD/2bAMq72XngllnaIBKjdU2zhof100Z3n0ORcC+DaRJiIKLgP2DmEv5O0NHma0cr6yfPCi4QZ5tVtRsr0OORSGmKZKvuvagtOzYDQFoR1KOD14P8I1fHwT5PIrCMt1qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707020897; c=relaxed/simple;
	bh=1MmG/S0ZlUaT1JcyAOT7Tdne2PeP0l7MXT5c9zFYOjE=;
	h=To:Subject:From:Message-Id:Date; b=fFEMls+IK7kWkZeOPx1rhefOiH1cKvbD3tkQyHBmMPXmWi+E+fXHK3C3XD6dOYsYWHJpyG7Dte2CZf92I6653y3c4LIML4G7L5QjMRwBKozmoWr7oDUKXq5k/8U5Y54tgleP7HCgE6LOAkm78bD1tcD6etmG5BoiIdh/hsRAEJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hNrnJ+1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hNrnJ+1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AE4DC433F1
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707020896;
	bh=1MmG/S0ZlUaT1JcyAOT7Tdne2PeP0l7MXT5c9zFYOjE=;
	h=To:Subject:From:Date:From;
	b=hNrnJ+1ZOo3tp0bJnQnnrNPRuDSWE6zB9tu1jWVkCx210qCBq3aX/LBmdrZhyiW0Q
	 +XttMLGMw7DPNAbNfp7gC3CmR66rtpfEhQSozkKDdYVtCiFxlKHK/RpImVYYaeBuo3
	 Eji3ZhDdKucfU589FpjFr6RATALEN/uyxl7TC42lRii9MBG5vig73yJkvagxHWNVyI
	 MhR0uE9f4+9lSq8ogUZlk1birmJEWcW+9Q7AeJuGTJvgcgh2JwFiAbkQXFx2AuK0Cj
	 r2sKR3VJ/wCUgZ8Jt8iyE9hpmm234lRyI/LbhkPkwi/SfWHcjhawdvaCE86j5BgAyH
	 mkcvl/QNp4IRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCFAC48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170702089640.17937.14265943175035276011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa71ad122ceabe30275049dfb29b9a6c778efb9df02b16c76072129dd85fa677
Date: Sun, 04 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707020896
