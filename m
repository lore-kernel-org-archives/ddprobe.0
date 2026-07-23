Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC0A847A0A6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784808034; cv=none; b=EzlpgPNDYeEnNphD91cR3clAurGZx8EjR56D2XX4rZfD33bG4bRhvSvaCj8pAMhGBdGIQ0wbxQuAbvWqCmBrqbVi4/uEKVepXhNpD0m0MRab8kUV3wRrUCOCY6ZkNoav2/hcDsbyR7kIF4vhAqW5NZNmT3Kt7zywC2V59GtEAEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784808034; c=relaxed/simple;
	bh=2FT1AQ2Tx1J10aquz0eWFUhrl5P0nSQAhB0VoLjnSUI=;
	h=To:Subject:From:Message-Id:Date; b=epk4spQXY9+Rdmmq73ORheDs/Xbv478gXSCqJGy8PUxnyRsB4Ym6Uhi4L1P7XWo6tUvNZgSu4N2n+ht8/pxjAMgA9XXggSonOebursa7ELwvA9t49oDvzcUi+k9Uj+5dKab6HiVNiNVNacwJv7wDOy7lqWxlugIrZl6wa+LyGxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uiq21gNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uiq21gNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB01C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784808034;
	bh=2FT1AQ2Tx1J10aquz0eWFUhrl5P0nSQAhB0VoLjnSUI=;
	h=To:Subject:From:Date:From;
	b=Uiq21gNENCjAcs9ENngFjoq23Q0wTZ8MbZUf+XQBe+HRbPVdfigHNIg0axedf7Y+q
	 VCpH/1oN+O9utKlXc4QpYBvHhOzCSDjZR9fsTpyOiqeT6LBeS+s+pKEh8fOf5w9d49
	 wUOSCvKcXNw6EYzOdDlKMl7xxsY/52vw6xnK4vQXfiDTz16JwmVWmqvi7oOieHLlXE
	 QdjO1h/1opx9nJMDBJ1V1o6KTtAUlg9uZB2+wcvGdNYp620ZYFZuZkNH5MmGm6m6nk
	 njCrsmog+a3luFIZ2N4El/L0ttvprzGLd2gWj08Ivq2I8vogPDTWZwQu6FS0OGPkr+
	 u+b59S0Zu46Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FACC531CA
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178480803374.16746.5353701779314528395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9e9ab0c42c609382385dc0306b256afea503b49de5631a65de99e57ca17c68
Date: Thu, 23 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784808033
