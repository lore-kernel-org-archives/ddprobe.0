Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177C0C145
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774226694; cv=none; b=W2uAmwwzrhq4FbRBFx0ZzgW4m8cjnM33eMpJ8/rrTNKHiv4XKj2bGa9lM/m46jwZ9SedjCefVfIdeLSejs3M1K8YAAOD+K3FkJbhJuvONDLRgxyJt5rdN9z6AEC/TpxIm1t8b+PNLHbSuZjM4KDLZ+48WwEE9do4LgZoLErwuLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774226694; c=relaxed/simple;
	bh=pGLHWkcFS1mGLmfohA8P4K4bDtdClz6f3cBvoene+X0=;
	h=To:Subject:From:Message-Id:Date; b=i7VhjrR2/Lu1y2RHTTvmbOtj6sALS0u0ddDzGcJJfbmNU5I3JQFARm5uo6T7uE36txdxZIAZG3lpggNcAiX8/Rs01V9lVJPBEpSZN1V0KNUyi2tP4m1RDCnwMPT3BjdHApwZZhQkwpC18WG/xMn/GqcbFlZL4OfTFShm+vbkUaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtBZPFQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtBZPFQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C60C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774226693;
	bh=pGLHWkcFS1mGLmfohA8P4K4bDtdClz6f3cBvoene+X0=;
	h=To:Subject:From:Date:From;
	b=VtBZPFQ2lNGA02c68qhM3h1bVkUWmCbLY89MxwnW3t5t8qqdtI1KWl3dHomuT8CY0
	 AJGYDuv+uz3u8OgI/ar92Uh9LnFE3dZAOD9uwYPjfYZbBawDgrLtQ1NPs2OroIorrM
	 33CokUHV9ZW2Hn86Pjsu3lpMacXnCm7TPNu9tViuQV5Zlt7PLp1R2WIqltCBWJaHzu
	 0cdE++iAkmDa2y1wA2KY3PViFIyFtqS2YL4oMlcTsrrr6RcgE56J7UIOmsANyTlG+2
	 XQt6DwX4kyyNo/yLHkgmSph/3sh9h5mRf4ePv+AKFcvfAoyNd5fangXzIm6SvI1JnP
	 ODYaa91Mu50gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3653D58CBB
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422669363.31159.5861843566111577191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa989956bbe047e271cc8627b5b1b1011547ba6ebc7f0f03bc60efc6f690d8b
Date: Mon, 23 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774226693
