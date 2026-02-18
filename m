Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043172E54B6
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771397094; cv=none; b=p9Lqka5kk9FtZu5Ik44Iz/DY1v6w1zu/6FQSaoHFNGQWotaGhaDFAgDuHy9jX9vZjflbJOGCaf53wwluK5v/KXKIurKZmK1nDn1ZvxgmA1e1xz8b6AFXp8+Tmwya0vNBaDRJtRGtXOSIEcFddotWlFP6r8F9bI6ioqNbTiK7nXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771397094; c=relaxed/simple;
	bh=CFGthM58pVL4ShPK7m1c2Z8/frokFSrErFRnOhQC2h8=;
	h=To:Subject:From:Message-Id:Date; b=oknWnJkruO2H5K6ABpC0vDe2s2fIxSrSzXuFZ419wSykG8R8y1y6F65kYZThdjYixN7wqzeB6GSm5nHjAO/Z/SYZPNv8fSRyNke1ir6G/ZCVr7v4zMn1keYhUarVpYTXgy8dkgdjiwbGl8dOgaOVrx9UZZc2kWZyD1a+GjBBAM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baopIY2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baopIY2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B3C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771397093;
	bh=CFGthM58pVL4ShPK7m1c2Z8/frokFSrErFRnOhQC2h8=;
	h=To:Subject:From:Date:From;
	b=baopIY2+I6EoErqzs33pWNWhy/QNWxF0Gqx5S+tqygR/MtM5z2JkrqAp/wRFkaM/q
	 DLi7XhICE2yVVg5uqEu6qIUIE7C+B0xAk+m9BF2y0GjgEyNfVEqbCSgrvz/eMPlQVz
	 0+4FHXrtVRfru2KcM8Ne+NibXEhKUDFprRUEYwMhCUW6CyKMrwlYPQYDnMqXvG93Ef
	 nzHC9qcSZlwi2GFFQEP13WSUH2ladAItwo2FMfHdz3oK7S9j0gN4UbTy/UblvJfP9j
	 zafUuIjfCweiLeqfaqjxFaQkNPs42XaCEyykGwsdNNy7FQvxNjEAkT+K0+ISdrxHxw
	 ehNH1gQQ5JWlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D1CE9A03E
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177139709358.31489.17262093703535863787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 433366d0c51695f6ebc5f231ec0d2ae6810104b0a0e87a3f1641b82f1525badb
Date: Wed, 18 Feb 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771397093
