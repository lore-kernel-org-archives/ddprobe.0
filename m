Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5031DFE12
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748245794; cv=none; b=fDCTZUHFVUa3BkDsii8hDx/dPG9pd52I5cqI35x4dR21BGhS0Pu4fYnxiOhsngRV8lw9jKShF5SkEzSw1FHFoxKd+4HKW6Mn7yF1/R8qqaGjl3Ot2r8HHKjlEJwCStHgajd2ckPboBvA/hFrXC5KKPFqm5PEVJFRVE3dednRJbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748245794; c=relaxed/simple;
	bh=p9vm+hZ2ImUsbDL2Qzxv0Z0OzOE/lQWIWKSvfUBDeO4=;
	h=To:Subject:From:Message-Id:Date; b=iu0QHmkUlkb6s0RSYIhzAv+IYtdDus96Z/BGM9I3pxzqxzSHsQDrzhn5mFPcGPoEO0+Pc0D+6vuXIeCwUWDxYH28zUruyiTrJ1Bf15qGLdsyHNJi33YASjHZoyC+WruexRiVTL8iLQa5NXNjjZq+qrM7lQPn/qV71gv6Zj2z4Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYGJOBPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYGJOBPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71D2C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748245793;
	bh=p9vm+hZ2ImUsbDL2Qzxv0Z0OzOE/lQWIWKSvfUBDeO4=;
	h=To:Subject:From:Date:From;
	b=hYGJOBPPs5lcabeQm6aYR8N5Ox1YVV18r2f2GwvKobHf1LSVKZVWqp8xVhjzQULZM
	 tS6CzCBpvT0dhXYkAzHFmyCsAlUDfKGLRmXpzt3eKId9Q0nTdGGymN8iQNp0pcUIbL
	 ue1s+f1eCeqAFOdIlVVJe0x3wb9FY0PvbeC564s/6scv6EtWkm2smkJIMdIww45CZJ
	 CUo0fPGW1j0hXoPA+x6QdAdG1uN2WyVCT4RFZzCsDXx+I52PatMinlAzsQ+wJLUUCj
	 93uJBXWYp60VitWq9VbpGWdwJ2jI6asibSYmwqmDjtzaOzZL87V7jFZ35+VOfh0PPn
	 /o4V12FhVdrPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917EDC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824579358.30543.14381212012649683834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab624549ecc80a227554bb0bd44c0f41656f64467f312fdfc85d4831fe0686c
Date: Mon, 26 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748245793
