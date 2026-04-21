Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EBF38D
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776775054; cv=none; b=MFETXtnpewAL1oSbOxbJRLcWfjtxEFZkwFIVtlwGCI4KiGo6VRL+/MK6GayA78Lgk38LxDVfH0uLcM3cuS07ji1tmQgYtYNI/0tlpEu4dV1pEC3+spzih08FJgbNdtj9KNbqIyddRwIYSkIjsrPOBpAS56TEOICy0geZGEP/1BY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776775054; c=relaxed/simple;
	bh=yI1DB2xaZ+c3X0PN97hWjPyjN+o6kZYjd9l32/a8mTc=;
	h=To:Subject:From:Message-Id:Date; b=ezz3HS1e2eXT+41FAcWnDWxYASvehT/Gij/NeDfG8+CfU6GRd4Yerk//eV0hovd9ixtMpcA3ULVt1Bk9fyPScBmMn5/AdEeCpVMS+4pD1zRcJVbNUOXtG5al1rlCiZvUTKQ5Td6e0U5FIdOBMUBotzBFmk4L6BKgrhzkwm8z9dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uo04YW3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uo04YW3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA588C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776775053;
	bh=yI1DB2xaZ+c3X0PN97hWjPyjN+o6kZYjd9l32/a8mTc=;
	h=To:Subject:From:Date:From;
	b=Uo04YW3gjy/foxvTMH418nAnchvm5SVRnMw4jgkLB8fe/Zx0yXgfdWJejQ8ZnKnab
	 1u2jDf1hIk+nXu1MABw9t3Zy0t8qyxciRdiVJXBKKKZcMB11ItE6Hj00sUIu1uW2wx
	 L1N5pGfVtt2C2tZzBxuHbfXBau6wyWP1GF4gJ2CPKUV70iX7N2jOGC9VjXnd2F9Jwg
	 3V2lQcpM2GbWLk/sl0iqKFTdI61HgTL+pWB+zS3eyHUUkNe3io9WVd0gal/2sk+db5
	 Z9KQKvrGqGi4J0055aAvPkkfktqQ4DyKbd6SjTAZqXWzAezVF4AipFl/Pin9fEAUQZ
	 Jbgisb17DZEig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA855F8FA6E
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177677505368.9833.3420256452429300780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b884156e09c745606990be32b0cfca2c5e72e3f8ce7fdff9b816542742ba42b2
Date: Tue, 21 Apr 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776775053
