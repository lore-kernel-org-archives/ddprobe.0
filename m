Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2FB3C768A
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778872835; cv=none; b=GZSqkhHFuibtGH82wA+vTc5bDF/2Faia5plnz9+X8kwiSv4l5rPR4z2WhIazsLWmHG8yK5wTMkER5SDSJad44kx3kH+ZhO/a1hKhg9yIeU0+z0SghM7JVhmKOXjyWBjG9t2zbk4VoIprN6OMJgoQzjbj0d7iIFMySfdY1/dJ1hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778872835; c=relaxed/simple;
	bh=Z2e09//EWWWx24/Mx4tA8bD1T3SRTyp08hydBACWrdA=;
	h=To:Subject:From:Message-Id:Date; b=OclLiNkPL3t0gIflGpEsFpDJtht9H5+0qLq+azUnSQcopIqnR47u5hkeyvcJU3FXFT1k1yMtFbu0fYjk+td+7kGf/wCNh91Huw7N2CMNOAdXMQUFjwn/NzrouQvKY5Cb9Y8mv460KG0u7gsrtISU89ZXKV6PKkgBii94X9TdwZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUyYY1ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUyYY1ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 057A3C2BCFA
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778872834;
	bh=Z2e09//EWWWx24/Mx4tA8bD1T3SRTyp08hydBACWrdA=;
	h=To:Subject:From:Date:From;
	b=MUyYY1tyQrz1n5o5WMT20An1peTFtPIl6mNrAtZB+KoyuI8w9sUcyHFqe9JdGNQ9/
	 nVCcBbUy9MwrDjiApdp7ENxl5EheWdDFuCIAb1Hcjoj1edeK8mncN3tlm1YZj2ZoL4
	 F9PGeln0/B1igeC3htf1PpxfkjafHvnuAosw+hQmleTe0QStoZjSbP7oOojtRnIoxX
	 BUDdaGTITTlCDW/gPQiuuMeIZS9ySXaAoMRs+S9OGTyjvrxuS9XF7oIoJwCe52o1Qn
	 Q64L+20ly11GrzxMlEYAgU5r7g9KYFM99Fa0R4Ox/aewuP6U49+8Kcig3h6YR5mpt2
	 7FS6HwOs03X8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA5BCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887283368.3632.11624763130266636576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77714fceed24c9cf680abf6866336b786d026de52b9865a0a47abc23cd90f41
Date: Fri, 15 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778872833
