Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC9A2343B6
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763316114; cv=none; b=cIfTYMHeBw97i9MpnDfY5jIUHE9R0iF0XdF6awILY0Gv6FlnzKzEmmDv8pJKzYS4yM9uLoN7fSgevGypplkTpPduHRyNXJQzwwTyYqpxsyQf1SBN3lf0lO0Pgb5ZrGfKzPhEER+jzeGPuONAXBEcTak5p7Y4UsMqQyXNJgUZXAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763316114; c=relaxed/simple;
	bh=xrTRhKyZeZoZW1TjAirGRpfmzwCpzyqtwqoCU/tXtM8=;
	h=To:Subject:From:Message-Id:Date; b=bMs1qxU7Nv++BdDvPGyFXxU/WrROTEQ/Z1ZiG4tEJ8sWYkF3fJd1U31pqxzs4XVO9IE97mNNH2o7ou4L8re3gv6TlJ8CtClmCq+wsyN+3ChPxNpqwwtQQuHI4SvZSbWtu+l+GoMS9mmyBS6OsAzCCAxYvNF6taDTN6dgjGbA32E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HX2FvYGR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HX2FvYGR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B25C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763316113;
	bh=xrTRhKyZeZoZW1TjAirGRpfmzwCpzyqtwqoCU/tXtM8=;
	h=To:Subject:From:Date:From;
	b=HX2FvYGRwb5Hbt69l60m+Uw9xXDfiES2rvpQt6M2oCRyzbChthQqsWfswANpyEwx3
	 LpnVENo6rYeMapQkGq0aMv60osjstdLJEiulkmH727wKRnYw3fVYBvdjjjL6ZCft0z
	 rhk3LiWKH6SA09uXf/u75gHlghXFPIzXc+NH6OeY3jt4HnQ9vOCBnMSvE2aHFpQem4
	 kSFjxY0/4aCWUaNsGvhvghPVvnKs++h4ndyUCTCiMfnSz2iR9XXB2ZZWQZA3zl9zCi
	 3c1ncNSkqwQsvyP0ysV5YQqRgKrCpr0qAtO/x8kTTFro0769b+9TGMysFWjklt1Qow
	 8qBDlhUOtWTOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC1CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331611358.8676.915121041416530994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4381609f46d5feec70e3619861a4715ac966a2331040292fb8d1482c2feb6eb
Date: Sun, 16 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763316113
