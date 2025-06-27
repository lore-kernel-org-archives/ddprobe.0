Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3B72D8DAF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751034594; cv=none; b=m61iVjISoR9CSLRT3ldwDqi34V5muGjL/ZzMKPnkk+V5IO+B4RToivq4HNSMKpZ/dlmtgIIh1ZOFi/cfhiiGY9GajFwEdJD6HVCg8BmNsuByO//HKMyC+vw+sLVDf1iFQKlGWZwQyZeaB+/M7kzv0xwHF0qdOCfWX1b30Orsbz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751034594; c=relaxed/simple;
	bh=U1+c79kOkNQj59kIGN1KwZjy2W2gNlBsna7K15ngWH8=;
	h=To:Subject:From:Message-Id:Date; b=gZNlUz/rG1CgzX1mees8P+M67vcQ+bDIwnkghVvaXIdeO5Qb+bkk5i0yt2NM8YCrEVMLCVSPV3dEq6tbyBB1CvgYV3D/rf66D5CkCFZ58bpBiU7ANMTTH9CcEmXgrq8Nl8kAkol3jUa8JeVODXQ0l0Uw/b1Nezj20VdUbdRD24c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwSQwgFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwSQwgFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B371EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751034593;
	bh=U1+c79kOkNQj59kIGN1KwZjy2W2gNlBsna7K15ngWH8=;
	h=To:Subject:From:Date:From;
	b=HwSQwgFWZnxDupuqT4q9SqHITovAhBcAC/wb/zsimupjnthQ0JUKYK/DWhmxTirq/
	 pEDJMlyDATHs50FFYkUmpKl0ZrrawXMsJZeCKCm2jPBXvgtsi2FackUYjdsiKwHvYJ
	 D6SlKYnTCtNTZcCjT0osqg7M8D8dJ+AST8f6jJwe9e60vp+zquNN5AL6n+Owe/lJqH
	 iEOZKEfTX+Ne7jMwEQxE2e/lhvuHrXgylBwh/LLquNYw1YyHqrULvrmXPXW/kgEIMx
	 48gjY9wU7kuiyOO8kz2gGGkEXWLuc9gMSjF1KKQBJ66kRcRFBbqdpQNDkvIkesZmI8
	 3hILKPosPoSQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B217C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103459362.3806.5800464929335216351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90511edbc54075088b2016dd93f4750998ca67ca73dd90f17101396f8a13a8fe
Date: Fri, 27 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751034593
