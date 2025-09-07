Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341D63EA8D
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757211595; cv=none; b=Q0fvJiRie0D2m1OikOWFX3uck9BBwRYTO+EhsBeZN4bEFCaBlAyvn6oGAWbvArXWy1p9Z0RAIvMZ7+aL6JYIXUH9y5uyb9VcirFEtcK/CYINp+IScFpip8yuH9HYnRlJt/zx0K9hgKa2sXOV8vbkQMqbLK3Xyzg/MLh20iQcK0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757211595; c=relaxed/simple;
	bh=2lIBI8V3rHh1W6mfZD7nlvNP+gFAmeQ8jzdqi0/3xD4=;
	h=To:Subject:From:Message-Id:Date; b=rspGPcSc8DZ5k/zT/V4UrhtCYZaBis8wYPGbKpHfIrNwqqZBAo+iWDEtQ3c8L68zU0OidF1pRSVk+SZNSEz2ovwJPzz3bpeiqauyrWv+Sgyk2Y15K2TpWyWNymPQRCZ6BbNmfQ8x6FVUF7nlFFmPIhjFxhjomM0WirnkuebiNnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9o96Cjs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9o96Cjs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757211594;
	bh=2lIBI8V3rHh1W6mfZD7nlvNP+gFAmeQ8jzdqi0/3xD4=;
	h=To:Subject:From:Date:From;
	b=P9o96CjsEgxBT6YW8ZA4uhHhwYmrN1CtrLnlGeomB8WQntvVxF1YEKZQXe8H7oVgR
	 X6zVLa7b5CqUFLzhuUZ7OjX+P6eKFLQ2WOgCZWpQwZVfxciRpR/10anJTT7tCV87z3
	 mbxfaLpm7ELpdHv8dp+MiU7/ib46Lf1isrejMbT3h04z+aGkdtPLjzYd79rIXL7V+w
	 xnptyVzXIPmBSFryCQJQ3frRbaNY+Z2FzzqqYcAk6R9kRKsFhmzIi7tEcFx4ivV12z
	 sb+vksimSyvSQrXggDl2Bho23ZOlVm5fTeUzDnfUq9Lz25ljL6dZgGImfdHg1jfghG
	 AJ7wNa5k8jTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91459CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721159357.16938.2453227160473381290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b117936a871c134c5689248fb2fa522edcf65dd83fc7229c4d2111b58c6a660e
Date: Sun, 07 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757211593
