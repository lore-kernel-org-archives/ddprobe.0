Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3092BE64F
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770312834; cv=none; b=J8unyGA4+wJrrvTLQp9+kgwNeTHI+CNRoziNd5MYkT0kTxZmYV5pG/5Oap7tRaZ28nN3ghcVmLSVcLhVQrUmoNtJispe4mavYfJBF9mEXJ07Yj6dRJkiyGukmcBFhsuq01jKSMPo2LTJLJgbze5HBzd/nFJZ4p8vyrBTS1vMeCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770312834; c=relaxed/simple;
	bh=SM3cxQLgLD/x6FqMv8EDIvyv2x1QsZQAjxpq21EHDgk=;
	h=To:Subject:From:Message-Id:Date; b=IIyZ5uNkHANDEcZxdiRs2KhXH0/4d1KOGCmTV/r5Gkk37e4516abzNs3yyskIawmLwoqcZKPyhOEJNskujuhc6ECPTb0NnwsenqfxJ1nflSD5QLF3dHUy6bIOhFuYhSsft6q8O1p0Rfdgu4b5vqU6yTBUgMq0PwZ1LXv+aDP5Fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmKa5XhQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmKa5XhQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE3C116D0
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770312833;
	bh=SM3cxQLgLD/x6FqMv8EDIvyv2x1QsZQAjxpq21EHDgk=;
	h=To:Subject:From:Date:From;
	b=EmKa5XhQQecW4AigtbH1aFqIrX9RP6n9XVAptZ7D2CN6meXFsVdQQugFbg0O79Qxm
	 V7urrtzMzMwQas06EORDV4rhq8ENvIMANWCf6+Y/KpRGypwrleaUE3vtxrPCZWuYez
	 O8iPDuq03MhM6rFccluEc3dClHdkCO0nYH9CKmaM2NPJy4BJL3v3uW6ssd4L/oCyhZ
	 KqnbxbrHTJRT5bkBl2lAWoZfZbTW0Nm2fvpP6+X2eVH8v8izkBbIHqcvqiI+Y6HEkg
	 G3jZNXDTopiAAGqlLC7NuoM5uVtT8eZf3Woqzct28HJgxf0y+hG8bzDKF6Kun6R9q+
	 g4VFPWWlIx3Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A7ECD994
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177031283366.29093.13708151904743466300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadc8227f16ce25ff5af31cbfed445cbabccfe63f7ab398d15ab2ef5436d44a8
Date: Thu, 05 Feb 2026 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770312833
