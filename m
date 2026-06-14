Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B4FB2E2850
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781463394; cv=none; b=qu+xDXpEM3hJnh5ht0TRXEgKiWM187vanHoefTTCZnDbIvnuGOgImmmpzkvxtleTv9fmbx+Bd3sZqlN0/vLy+lrGVylwlq80BYFWtvuaF0eQpFwKj3w5le6w0q00QV5uUqSUnznQZo5kSo00cm8KbS6jEunehm3bijr6muyF+3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781463394; c=relaxed/simple;
	bh=VEbDdT3R+R9nnU1lf/CfDGhyQ6k8E3Kud5SOH1IOouI=;
	h=To:Subject:From:Message-Id:Date; b=OlVMSDnr2Ae7lArhSPYu3p/mxLgp0pr+0fypdRyLrrnoKbQz56y1ueoUqIzCLC0bpHe/2ST711+ABOt3GQOrWvkiwJmYkN4bpzJukzziqidmdvupWB6Yo0PvlWkMzbSjswi3dSJFDTYydeXVbI9B0WcVtdZCoDQ8HsqjLM5Vow0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBgoZDFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBgoZDFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2D4C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781463393;
	bh=VEbDdT3R+R9nnU1lf/CfDGhyQ6k8E3Kud5SOH1IOouI=;
	h=To:Subject:From:Date:From;
	b=UBgoZDFnfV0Hb0LBvKl90T2nUvKXWzHhS1Q24faVT747r3O6XTglhRuQSOLJP5xLG
	 O7zFHuD+JFo1GKFyYlc+3xEGN7QyTsC97S/NRwdJOuHhyNMkon7B4OTWPnEoCoKvC6
	 VnNSKXRyarp8ZgLjg9aoRYPFSvxhGItY3moTpF/jqRUvJye4ElIR/bWQEr/efTcwsJ
	 Ce352QGSKeECKxYknD4DOLb5LIQB9xUz1u9cKg7Iqu1hap7wfoiEA8r7SuOr4W1q3S
	 OtCVr1JJPEFgqM9XIS86XyRH1AWfHI8c7npe32Xa317anXHd08E++Z85VxMW6Je+vl
	 iIcF4jJXoyFCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDDFCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 18:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178146339373.27496.12187642235182154915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1bbc0461d8c6234b31f932fa7e3292024134d5bc5fb394fcbebb2296802c6bf
Date: Sun, 14 Jun 2026 18:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781463393
