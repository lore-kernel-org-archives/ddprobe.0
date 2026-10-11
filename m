Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A4F43F8B5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791720034; cv=none; b=FNlJF55Jr/ik/IU4Q8gHJWi7NDjjTV9EUcHJOS9EtoktBMkl7ryMt6WbCFYk+XW/HN24w5MTCEfIKYByhvpPSGUQwdMrBMWBSKBTDqHBH7WcrqJ4gdtInIsJ89ybL0aan9fl90pm6B5qQOcOuEF4uQt36HcsvWSNudx+cr3+hFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791720034; c=relaxed/simple;
	bh=1+RJC88pA2jaZRnWvCWsELCY1QFvF8+qIzhVJ0MIwOk=;
	h=To:Subject:From:Message-Id:Date; b=N1wtZKdh1VGleb3kVK7JfJzjYct/pzvylykUx5kIF41aTG6u3S0Ak6vuzEJJq5E1ud1r3CVbXfj8x8ps17PEab0hY8nN3jdQrGnMtCeC5PXhIvDvPYfbAtMTkzYpqK6bbwSe3/wFcbGNcb2LeZ5Fg/Wy4t1pWJjk1JoF8JDipUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+zb11O1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+zb11O1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BFBC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791720033;
	bh=1+RJC88pA2jaZRnWvCWsELCY1QFvF8+qIzhVJ0MIwOk=;
	h=To:Subject:From:Date:From;
	b=d+zb11O1NfQPsEMc0BJ66Y9+ttnvtkpQcXPj1YgpW+bzYSgp6yL1NCbGmcLF7/cG/
	 gDczBC3Z+zopahrZbP8eVnWbadaQ69gQulfZaHroXiGBWy024PjkyM/OLGRr0ZzIkw
	 Zn61A8sshGY7kLZjoZ28GLBmx/wYV4j3DRnrPv0+Qmjy69jHZmkAaVX8mCYW7+brQU
	 jKksBmNWxv5Afd/Etn4GXeKmDpruY13ReIgXahv1kTj3ungsF9N7VQIJ0aqMwEIqt0
	 /lPebbAqA5hKpsweKZVUCGoDROXKLzF6iKKTEZ6cpbgVHFVA1SwgnK9hp5GCq4g7D5
	 2RSWkgleUEU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2627CA9EC9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172003369.18942.9015381074958457734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2d45d27265ef369db58aacec268db300ac2bc80befc946decfd88cbd2b8eb0a
Date: Sun, 11 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791720033
