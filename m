Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258381E49F
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727583954; cv=none; b=bcd08g0rc81QzGosw219BD1rlWNiWdvkKZBRih+P08Dl1wpiXf0MKhjPdX4r2LSWqFBvRMZkRRePs6unVuFy0eDgG2wxeqIYaL9C+/gVNv5zs/wCNXZWglDhr1P/WLz4v9eqivnTWJEYDejsOwL6UCcjWnCW1PCnt3ZB5u/qwc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727583954; c=relaxed/simple;
	bh=1h18ad5fBSkSzP73hR0r+2WBRfYvSbKIK4jhCjrbqL0=;
	h=To:Subject:From:Message-Id:Date; b=DQljPhvWp92EE648vNCRC4tMJHMap2qw1a/Avbam1g1Pfe5DrrOYS1jdZomzCJcRyFngJvBwL8N/EjvTpqBL5hrPlPBwfV3h4dEZVueoJDpjCOlNSrpz+sZvnnUdWag6iO1b0DP+F1ixc7IRrHeBbzXTzpeab+1XHuiUGcW5yrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL0i2h6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL0i2h6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52B9C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727583953;
	bh=1h18ad5fBSkSzP73hR0r+2WBRfYvSbKIK4jhCjrbqL0=;
	h=To:Subject:From:Date:From;
	b=tL0i2h6zBhoV7LjZcUqutYCTh4jgDNbA8+hZFRPx/mUs1gf3xWM9+wi6mYMHwTXQl
	 7i9fSgMg3RY/cFk7jZhRRbGlb09fRClCXS/5ZFqp+7Y9cYpyswOKrcxpyO4YN7ASgU
	 aR4O0TvAD2BX4u2s1c0msOS2nRTbhAX9f46Ml0sGq0bGLwNdB2FBttXzJWfHzZ0HRQ
	 A8979237CGkgr90I4QB1EgEjMk42fTMnSq4IF9ypghmC7SFLu/CC7qu2MPAqCH+DGt
	 TTRh2cb/tYHE7b5u3FntNWO3fvPkzdNZ2VEicb/6zuj5hbINpaJ6fDvWC36Hdb65EL
	 cj1m8W+M6S7Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0345CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172758395363.20680.10384885860109550492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27edad8ee29281dc14a743af808df40152b45c2cdd1cbbed0f5c860628bda6dd
Date: Sun, 29 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727583953
