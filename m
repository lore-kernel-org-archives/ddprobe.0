Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2CEA3B6379
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784735974; cv=none; b=K3BRNf/4And2sP2G09SSwa+NoZYL4ZrJyDoLkMZJXVpXXLOLpM3D6NslfAEqAV7bgc01R9z3X2gf33ouMwEpCDxFm3FR/ir+/p/2DoDw6m8xwagwy67Mx9aPVnZ37r5DDpi8m21DnkNkHEk0Eelw6NXJLOHRNoyNCDQVA6EHybY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784735974; c=relaxed/simple;
	bh=0/w+T4GrbGIE7ewTiQdXUYwSiq+uJ8CDxrTx8BhKKYo=;
	h=To:Subject:From:Message-Id:Date; b=Ajwa30TsH6Txa6EFwdHxTPtGIXO4lFEp2dD16FgcPm15Dj0cvBo1zXNa9DjJaHbxLg7nUxgx9o4oi1vlwxU6xP8cpl4fwUSS94wRuiFS9mE3bkcqeyk+g7IL5nlAs2qcOs9QeRvu3HcpSdiT2Xy37m8oI0SE69bR/pXigm7AU4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upqxXKjA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upqxXKjA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E94D4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784735973;
	bh=0/w+T4GrbGIE7ewTiQdXUYwSiq+uJ8CDxrTx8BhKKYo=;
	h=To:Subject:From:Date:From;
	b=upqxXKjAsHmc4CdyXkEKTqHHIZHv3qxN65eMYMFWelT0q/1HazBKPnBTp0sbarOuX
	 8hDbWUk7GMx6jorHa4Xif8/Z0BMTuHsT6/j/TFdJL+TvPa7QWgzuyJDmtPettGbX7f
	 6vW5PlLZnRD3g/bdVxf2OL3Aj87R9BfliJ7cu4t4kQth3zI+Tp8Ovnjju29K+00VIV
	 VSl/pAWEiShodJBhW4XGy0DEJ3zTF09t0cz1FMHJSTrIjB81iKkkKzoJn/W0eNaIE6
	 Lzqd6KyIZFx8tOpr/TKNeNSsj3WFD76dYTJc3DTzuFgYP556H/CEI+mnkN2qa3VICZ
	 F7Yc+kC+2WOgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC9C0C4453C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 15:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473597374.7266.2028400190543245137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c624425ea8c5f8647d9599bcbd42d397508f2da9718fbdb27adf3958d93e8ff6
Date: Wed, 22 Jul 2026 15:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784735973
