Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC53C133
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739066754; cv=none; b=dcEFLt57rxF8d+FQPFT+aLa5I9OJBtVX88rMlFgp4xPAQAnM9kmwbw96OMz//DRBrH31PVfp4mn/i5jOaY0xsfsUqy56JyJ3B8Dy/srasrXxmKx/YpzTq+2or0dYyIBO5GfiiALqdw5C0dcyWDIPymqPHXNb3WGKZ4QlJuh3OWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739066754; c=relaxed/simple;
	bh=KGSmz8OJg21Io+RletqPUZcA9y1WTpIJ28VK6CvsULA=;
	h=To:Subject:From:Message-Id:Date; b=ZTwCt1dVQhldgFNf673uohOhIJeP/sSfgXCWF04iRB+NHonHeQZzEKh+y7FUzQKBCuDEJ2srMktKWj5y+NgVfxic6hfR3d72YIDe5TDtgpSGOUXGhRgN1ldlcx9HS29vW8YqshHobPv0OlWX/yIionMniKKsmYC1bFE3cGB8iWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J7neNF2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J7neNF2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CCFC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739066753;
	bh=KGSmz8OJg21Io+RletqPUZcA9y1WTpIJ28VK6CvsULA=;
	h=To:Subject:From:Date:From;
	b=J7neNF2JEMwpgVN0XW27UjikwndxkBTrRh+oi3g4GH/4J+PYm0FNgURuRsmLzWZE0
	 tuix5rTSoD+lOAjRpUdqZe36scab5aBUiKPHiFuU0CRLhmffhnuMcMmu4N8Nw/zwzd
	 ziqSJCXFv2l7Ey+I5kKyJlX0ed07K+J9NP7I4lSAFa/detrjzpelu1EIABgY57E3CC
	 hbP1XeWAIMKTf7PrPGNyGv3n57WmR2Qkpv7nRr7+iP02DzWKnySjYRI5/KmM5r9+vh
	 sX+rR3TugKs2HuSBiHwNblNBNAB0xE5pDUnuz9lxCkDWLR+JuMGunICLUh9tcSB6s9
	 FOIuoZks44R3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCBFC021A0
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173906675362.827.3943944048531710150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8564f47a37410f0d52c00b7d9f4ddb5095fbd3eeb63d9c3de04ac63561385ced
Date: Sun, 09 Feb 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739066753
