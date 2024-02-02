Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE2F126F05
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706914697; cv=none; b=oXpHg9GbmmORYOeQs3TB5kDcPprSaEShVxlTGKQvSqJLbP+P6E3OK4vzwFqYYShdhkqUI7zKs9cRsr2Y/z+5mvg6f2zWhwrPX6cDdBDEbwda67+MpYtRBti8mplpX5w8P2Mtkm43TsJRoM7wnPeWuiiAUmjHbGYitgpyrn8UjLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706914697; c=relaxed/simple;
	bh=PuLloYrPNEAQVY9rWTqDs33eo+wmoC/szHlgNyeXKx0=;
	h=To:Subject:From:Message-Id:Date; b=YX4wogZv+TsfEMMDs+UIixGnvx9goadKFi1naohdIOmczrAcECLRyi4GevzgJzT+EGaFn564lCKmxp+mfynbtyo85bLyGgRifTV/bBp8cG4WC8ykmfyLnyQwadBrzaYZVUhs0ZShpe+HBMS6tFex9knn0ZSfvhiSLOAWU/jCjwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yswyd1Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yswyd1Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA81C433F1
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706914696;
	bh=PuLloYrPNEAQVY9rWTqDs33eo+wmoC/szHlgNyeXKx0=;
	h=To:Subject:From:Date:From;
	b=Yswyd1UuxFnDuF3FAYRKQI59wCI0tkaGyBPdU34BUv1piC6m7Tk1Bo+h4+GG5k21x
	 +0i+JTY/yMFi4bNYlh/2WA/22fpGLkkDPfn7jrptIGKUbPOHap/M6mlNV3w10vx5Mh
	 uTvxQcEQwjqcssxVRr7ynNCEZLSvB29GCs2DsSAzUQpxGgKHsuNdcURL9zhP1Gm0s+
	 ycowO41AW5y2hA40aL8gBw7ZLHdZ9BjdcwqNwAhMdC3DYDVcU4+qJrYCOGbvLR0+2r
	 PQgfgDxtahZeW+NHvpSaCytBN6JbHeNksWLg2kDrlFCO2kXmaL/A0TgwlScKGjJqTg
	 YR/1Lr/IlSoCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C896C4828E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170691469637.21281.10570875046801914195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d142c4f447317df75b7c8acbedb8ede31657e19866ff5dcef3180a2174ab1e
Date: Fri, 02 Feb 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706914696
