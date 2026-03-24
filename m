Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0017E3DB63E
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774344894; cv=none; b=VPj6bWs5Zcc0Sm8wBiHFQpLhH44gVDmluLT90ryECBjZxQm2TGekQoyLVwH2VlVs0b2xu8c0yrhA5QLrsu669yWMQp2UZRotXqxuXsY0XhXEdXN55LiZJli6VZYbCCk+c5nUrGTOhKsoqTvQ5/AciNFpvb4S7djCsa4nYUY6RtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774344894; c=relaxed/simple;
	bh=/YeKBTf8spjayMNTrcT9Zr/zZk5S3BHZzOHYxRXLwn4=;
	h=To:Subject:From:Message-Id:Date; b=uHeZFVLJh8B+s/uKmNK6kMzxPIpgSncE9IfMkjpYWmOdEdhvx4iEGxN12o3W7BhfIfeOn1FTfvuewYyUpOKId7Ep2actsO+pPmfo+LXTepROydHtP3aGr5+JwOccidpR09CrBL5wAmlENf2PTIFt2/aNH/q9tniBlcvyhKuiaxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixWJ/1cR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixWJ/1cR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418DC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774344893;
	bh=/YeKBTf8spjayMNTrcT9Zr/zZk5S3BHZzOHYxRXLwn4=;
	h=To:Subject:From:Date:From;
	b=ixWJ/1cRlK4IJRv0yKoIc1ryPRy6sCWEwEoLjYhEFSwcAwVb0ySCRjHkbW4RNZ9LO
	 1qV1NN8+egbpVv+rdzMrZyviG176YN8wxkwZF9hKRFMY3W2tAEVILCtsC2bNltvp0w
	 Hkmc/gPB5sFwOOdbht1loXVahjeeuk037MyfX6rA6X7dlzENqhEfta3jSMTXmp2wvI
	 JH825dgz9Oq94kbTwWdLzvAjxUSh+p47tU8xWpv8v4awMIUPAc4c8ibazwInWeKIXp
	 sjwL5TAqOQLiCdy+rKlCLiPuA/GE1DnGS+ADlGenaTGFrxavOc3t/GVKd89QSSWAxD
	 Dm2mNYjSTF+zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90573E9A74D
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177434489358.32426.3505406658954122381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94374e74940c92ed66afaceda43f2696cc611b8a2bd559dc759ab00899a7d87d
Date: Tue, 24 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774344893
