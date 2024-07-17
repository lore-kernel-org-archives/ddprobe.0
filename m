Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A13912E78
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721198723; cv=none; b=LvZ5sLExvX1HZjqGLYnqFKNkKA6DpPXa8mGTZkpdY1FUnEZfvr+46zwZ14TGW8RMUutK5+KLwxHSk0VRefwjlpcFZQwk2dHKQszk+dGpdpZVHMy1IFd1whJsXYU8k9eotyrkrxDI9ii/CuX1kBKsymM2cUifxk+PtBGbqu6drCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721198723; c=relaxed/simple;
	bh=THU/KWjkwr9EjsB/6deum3g74XzqGSc1vPNsiKLwfUc=;
	h=To:Subject:From:Message-Id:Date; b=ECEGVpsEl3b/qCrGC0D0Qk+f6MbJADm9rfOV1jkkfPgrE/bEL8rLCrJUcrmG9WRakPwVUcAVrx9RaCM6IVfa2xySBqdJnmYRa30bLnMKe8bQH2RtaAfuA35IsZ2Uier4DmkainfL53zylBg7ONhrx7cCYKsEWFs/AG4OEcxFwLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn1Lmz3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn1Lmz3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A15C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721198722;
	bh=THU/KWjkwr9EjsB/6deum3g74XzqGSc1vPNsiKLwfUc=;
	h=To:Subject:From:Date:From;
	b=fn1Lmz3fKnlX1nzVF0Y/YYTZ+nlGgg07lCeWPd0ZBk4cuXfEqA0Gmg7Bx2UmlhI/V
	 nOE26XwPh8nui7lK4BuQ9gopOGR9hmD6eZQMWIti9eR32cxEH8VO5a67sFMC9UxWbo
	 Q9hAvZMFw+Bv0etOKo4YVKfjOzx+j4JRdKo8xJY5dfghqWKjFwB+CGs1DYaURBstUk
	 tdsvL8O/xypxCPTc+11a7NJwbza8/X/htqMRqFgxILGSfoPNbPVkACIV9LWhJjG2nz
	 fPU2h/9+A7G/IPNOomM6nsmC788STLi4d0CqNLx5p9qRwil52buMwxw8Ef+cMVcr56
	 YT8P/OgJGePYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C3FC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 06:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119872275.23367.2640356702056403262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75fe171607f55f20346554f86e6070da45757185c38ca589a1355ec9ff9af4c0
Date: Wed, 17 Jul 2024 06:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721198722
