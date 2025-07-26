Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202BA481DD
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753520394; cv=none; b=l+fVKuTWTNWYD6+Is7lyh3Dvs3v/11o5p6YgrO+NsT1Y3vXpTU9R/kPLllHGw/iQHvFzKaSdoJM4wCm/vZ5J2Kzuj0gF/cQugVmrDL0faRpyS3++zu5mbAR2uuW6DOku1uwRVjv0F71ve6HFPprAV9Is1/uzxu+2pqmhoV/Da5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753520394; c=relaxed/simple;
	bh=eGqnJr+c4tn6nyt6pjU+mEqZWXOSsvCPjgrl801Ngf0=;
	h=To:Subject:From:Message-Id:Date; b=rdE7ie06u0vENoKbntDxoj6TuCM/yQdIPqIUkgiM3Vn82LcKJVkVfFrFDZgCyShHldgNjKI1n1xEp659ldacov/QNTgzXcUlc/ar1j1qQCYycchhrkvVDwD+HHf1QdN5QDx+ZfrfsKvpbSkcPBIh6+2tP/iKIN7mbxO0xZk1HaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfVnw+eZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfVnw+eZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DD6C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753520393;
	bh=eGqnJr+c4tn6nyt6pjU+mEqZWXOSsvCPjgrl801Ngf0=;
	h=To:Subject:From:Date:From;
	b=ZfVnw+eZ5j5zt6cTFOdmKrHFDjpZII40EU9RH0UokEHhpAPOsITbjvTGFBguoC8hH
	 TlRXFCBtVuo5qPmPZM6u+0xlXaz6524Nfan9n5Z3f0C1m7mecyCAFJivHlPXp3k5fJ
	 S44EWDtPGUeIwocAt++gEKd8m1L658JeZNRkNZUWhuvMvTc4YwSi3hWeFCFQm0VuAN
	 mWML9cwTgfQKCc33Y4tO4i2eG52zjf8EgVRs30KoaJGshyM9AkLnQLmsKO3Vu64eAi
	 PQrTBMFLOf4kdZoI/uzCqwxgGzWmAq1V0/mYMDu5NKnGfVbv2eQlD4D+Ps2Tu1c41z
	 0gm+XuZUmz6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9620AC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352039358.8246.17416662379404819338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c1486f1d77acc1da68e8a66719298a54d94f14b8803650ee3495e4f0a08d19
Date: Sat, 26 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753520393
