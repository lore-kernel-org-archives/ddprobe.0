Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327BB1D9A66
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783649914; cv=none; b=qSwvJj14QX5x3heF2nYAB4f7nOfUaY+Pag39wa1Ot1zVFMmUJKsoslz378b6u5rQGV9NOcaIFVswdpDbqjZLOeDk08kcuFNpL1zp7m8reW4m9RPs6IZ4GETkhU3Ic4ado38pxZUKG5saZ1qGyOK0Om1dmCheuWMWfOQK4poNkSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783649914; c=relaxed/simple;
	bh=5qAVhfUEkbvGolrD6QS/JsO4NL07Qq/K/bn2GYSBntY=;
	h=To:Subject:From:Message-Id:Date; b=pJ5d0nGGFrV5HIjplt4dYV0YmXndwAw/2kMYmvhDmsCrEMHxomugu3BDqq8SKfxnlRd0C+Oq2U8JvBOo0XknwDwuJMGvO1q5qJ1qOVestwF0jZEzbnHweIx8XLQJDVC1ZT6vY8OQ1mTXTTFpLXmBMQLaTBBfd8rSo0pwwPbUtjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNkp0Myq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNkp0Myq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2419C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783649913;
	bh=5qAVhfUEkbvGolrD6QS/JsO4NL07Qq/K/bn2GYSBntY=;
	h=To:Subject:From:Date:From;
	b=SNkp0MyqGo9jcFJ0eYunFMcHGxoC3FyqrWzqRGBR4Z7BTkNaYa8X0pizO4z52hWTR
	 RS+QFOkELZiPmb0w5+x2p+AvYO9j8GX+srIKpCcwoTL+/pjRHWOTIpzQWrCcN7m7t8
	 KOLgXpcrlYr8WCtV2R/sTK+8zCVwNtQbZ6k+32RY2kH2x275CnI09QEBAq48RnTRin
	 /VWr+QhWKSqyMOqDCRQrw7kEFciddAx08DdIxtIb7/wTi4CSd+2pgnL7Kl5gpAruzh
	 WXe19AChxb0YPLmHcGPVugLLIkByBOl7Pgq8QVgvTAuhpRdz9a465GQ3pzetijt3pp
	 BLSiSNKDTwDXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB2BC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364991371.10876.6741309118512739154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ccc1299347abe11566037ca7dacc63e4cb6a266bc112efd7e05fc58e6ed727
Date: Fri, 10 Jul 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783649913
