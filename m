Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FA215A86B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747475994; cv=none; b=NX5VTZs2zmB4Ov0avE8bdJmhbndih8VqyrhvHKUHRC7QMoNTT3L9AmHw4KA099Xi248fLF11tDsezznZUdgYtSZrCuPCUhA2o1XCymie0IulK4YVPG6eJZhfgD5zxMkPcZlIkGtni2MdvE0eMlr4ystK3+GSZoxhQXbEELGgIXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747475994; c=relaxed/simple;
	bh=29c/MEu9x443NN4FUQuIyYuq+ImmSZwrOfRM68TjTWo=;
	h=To:Subject:From:Message-Id:Date; b=K3O/m5DvbKEEvmTh5JbDCM3NwFxepDf29HnBCQFd+N1LJ4xmYx+5rfcDC42Uq84NJTo5A+fBEOIeBztk4g8dj+qoFnwL9PNgTfBPxTygYPmXPBt8BNYKya5rXgUXXqI6Gp6zS8+CbBN1dNyU4f/aSx5QGTulHod7S6uoQ3tBTqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i0MSQQRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i0MSQQRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747475993;
	bh=29c/MEu9x443NN4FUQuIyYuq+ImmSZwrOfRM68TjTWo=;
	h=To:Subject:From:Date:From;
	b=i0MSQQRSqkVp5HZM0Mr5/ReoLF8XvS1lRCPzKLh3WJXFBo3vAf2318QIyRIENcYhy
	 wi8uPmSrr/sjXpbCVd6j41K+05MbcIJqoMlxkMTPcFBj3ql2nZhzKz6vGfQdScVklE
	 AKXXC0uahMQR0mYa8Qp0P7kZbaS/dyNfv/ALooAAFOhjoL2qYW4Lvo1xTwJPilcv2T
	 9i6PFkd/74SmWVR2I3csp5BR//8sQN6dK/gFnF12WsDITSjUYvyiEXvlrZHAVlpI8X
	 WlVERFbkh7hmddceRxJXm/M5bJKfxc4kiLKVt/F3cu/792MosVmdkgaKzut3e0KXie
	 UONIt+bBFXGmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC48C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747599357.32231.11294790671349966137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10a8a94b105bebb08071947187ebd11002ac5381e1d3b701ba36af543f780c5
Date: Sat, 17 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747475993
