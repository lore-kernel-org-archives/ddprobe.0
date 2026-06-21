Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55BF425FA29
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782075994; cv=none; b=bot1sBDzfU+Qc6UyzWv3z07koNLEr/2H3GLTfst8wyfRF7JeMMcsiVh5qkR72EOBEINsqYA8/fhlgb3gXZ4jsnfYzOkJ4ROBmSuwMeRByT9o1OfcBRDKc32f+SLmwGtgsYrkFuI8wPgm4Bn8ECvTvWKvbwbb0XzvGCowAFzcQOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782075994; c=relaxed/simple;
	bh=MLsTvG6men1Gz5bU3x89VBSaHp07UVXSFo9CbDUui+I=;
	h=To:Subject:From:Message-Id:Date; b=lw2bT/FdAGRR/2tJVg+g1qO0e4x0Y5c/zRPO3Mik8zUm+Ps3KMlXH7tbdVsIcKtABrkHR2lyOo8uHwfYYSl0yV//OCidarJWzXutlTuUREzFv9nZH+R3MxgR4E1o+xkzWvloEM4l3D8yFYwkAD+YgiPb0c8HcPO/KwR0eYCUrwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrP/EgmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrP/EgmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCAD9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782075993;
	bh=MLsTvG6men1Gz5bU3x89VBSaHp07UVXSFo9CbDUui+I=;
	h=To:Subject:From:Date:From;
	b=jrP/EgmKMroS7hJeKz7LD5xvoAa2Ci8/y6NVFr9aIbKCHOeg2qP4CBDJ9aIJdr6ng
	 FEjDGL+jikhH9VJvnZVi6MUn0tlW0egOv2UeZNT9wHORJdFV0jGAsTVCsDSKfW7PvI
	 6KBFlEZlH2xD4sRDtWWIgh8/boXZ7HukA6EWon73SYEMPfgAm1DgEbwNlB6LOlpotX
	 sUKmk0ZOxQyPgWLbpvJHjrpLBXHHYVRNISZwP2W99fXk7WFIAe1rio/5WEqHReLgZb
	 F19Tikt+va4a+JbIONtVs++4S3TLmU4H79vvGr1FNKxnv6tJnMGfD0hJK3d7XQRWde
	 R7SM/GFW5bhPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B90FCCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207599373.27799.16748414821805780162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567cb4cd450d7e425f093fd5c87505b1adea6d445710fc33207435fa331a34a0
Date: Sun, 21 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782075993
