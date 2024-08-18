Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E966168B1
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723968954; cv=none; b=LLyjSmvN+Y82P8rTh3BvHzRBO9F936gKATV9bAdQJkyQXOcSeEl1dNRUcyETjcs0k22r7SL/vf5s+Ow5h42skKLzo7o/dRlQYLQToXMZYVStOyEy08zXM6mGlAuBz3Qce3S++Zl2R3nbP/tFlrnnH+F7BYXhY5bhAVZ8N4IZFtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723968954; c=relaxed/simple;
	bh=DZ3qdY/lXURpXVj/QZ3yCTbdPy5lFLeIg2BrlPtkaRc=;
	h=To:Subject:From:Message-Id:Date; b=mcj09SgJTP9n5fdX0+VGRSV43eEy+g5YsY2e3vpdOBECbqTSWRO/DDgCTm/aa/r94lGlLXSI5H62t5qKS3XEncdMTlT/cGMNGQQrMJCX60hTVe7bKT/mFIpb+pF5bs9UCQJPWq8Z8iOYqlef1XM2g8LjuKFxacYo5mGY3DYG5kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggcTWDed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggcTWDed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8EBC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723968953;
	bh=DZ3qdY/lXURpXVj/QZ3yCTbdPy5lFLeIg2BrlPtkaRc=;
	h=To:Subject:From:Date:From;
	b=ggcTWDedNJHPiJV7S6y4hsAOCakAM6X/N2/lvR8WJ4t6IZhuXlXlN/s+EZft17VXD
	 4LH1TTILuSd8gIxIMe3KkvLqs1wugltTfYjQkuxz8fBD+fnxLlPaWuS0dieWWCP4X9
	 zMYsEeg+5wmksmQfcb1bhbz6c0y8A8TqO1Jnisctb7q4q+lRlFCGDXSKmKbUHcyp0/
	 tZslevlwkiAeAKQUuOFg4FeGdntaEYcU3cTM9rRWpN7kBrBnyg+e01dcsgLd80+JJa
	 TUnnwYAJJRc/pu4yZSJMJWYA5R61fEUVxLP4jF3ef6DzuCnX6LWW0YCmBvg7UD1+Ec
	 Kc2/5CVsrZVOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A01C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172396895363.8674.17220932138548322523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bffd39424412108c40095bd00ba3442e35309ab382a91dc1354b0dfc9f34a29
Date: Sun, 18 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723968953
