Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD201DD54C
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734472554; cv=none; b=rJdak3gpgNeIwMn5jzVC0rq8ydZ9WH+faQMFuwzH2w6GNI/fsvRJmsyd3n1z0g4ShhJiG33D9wq4OhPDFulbeCZHpoDFESSRRFTHQq6WxVyeKvJag9TnOhwCWaVx2lZlBzzj2/9EL0k7UvaHIU7JyFfl3HUgdKwJT2XL2XXzVwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734472554; c=relaxed/simple;
	bh=xOkisWThBWCwyTXK3tjGDTX0e2lAU8RdnYqJExvdCf8=;
	h=To:Subject:From:Message-Id:Date; b=g4RGrfFCpEA9oESOH9R6gnMYQEmAC/Q4ROEauHGsotPeGMJT/yiE8kUihW9QGaqCuPRISH1tdIsxaoeI/OLqAH73z8/LadPfkQhFiWKpU8ia05DAbJA2ZMPchQiJYxRg1XmuKkuMn6yRVQijNOIaH6AN8s9Guh74M+2DqbScm10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvsThBcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvsThBcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D27C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734472553;
	bh=xOkisWThBWCwyTXK3tjGDTX0e2lAU8RdnYqJExvdCf8=;
	h=To:Subject:From:Date:From;
	b=hvsThBcdbtnBoiKvJ5tw8aTpkSgLn8gbpDwdxE8zbAjOF2uR2fv/zC9v7tRAZF+wh
	 4y+HMwt+yaop5ticxz43+ZG6D4VhFuGD8/FrfCzu3xR5qJHT+k2CUmtVR/lR3RdQJF
	 g17H7MvoaSx8z2RvYU+YHuoH/oXIBZ7P3ghLUAgpa5R82/9kS3KsqBNrtzKUwfOZ6c
	 FM5e7G3Eo5vB6CqsYSQsVPgm5U/HpCJ3h5z46V0pbdVaFaE6YG/PENIBM+zA9R1eTp
	 nanDe6psaOkgQ9iyIoZtOGw8JlIVdm9JUnGBczZhUtwQ559c9uzfl7BN+NX5FQs7M0
	 5WK4coyJU/GgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A82E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173447255360.22930.560410846896090539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489e107fe28ac6c4c17e4049ccde0b2fbb913dff761c11fe73e2a5bb6229cd62
Date: Tue, 17 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734472553
