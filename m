Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 874DD7F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717805843; cv=none; b=AdrxrHnc8/eJO9L1qB8KU17tT9yXLdLOg0uT3AfEIz67Zqdl8fmawOqTC246Yj3FyDk96ZtadqfWVa8mu+pVVOXLaKsdPZCd034ZiGWFj1M9qGAo3UgRE7jYdv0nX8r7c2GPo594+IgxSc8S8x6Nb8PqTlwT6Ku0JBDpKMBBd/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717805843; c=relaxed/simple;
	bh=ktGbY2uiAXuBx6Q0+CVGEfbuNSADutcPEEC+yWFT+yk=;
	h=To:Subject:From:Message-Id:Date; b=QD3kNq+VfuvM/2sPe8D9NAcwpYDUsVSg7VZmzWakUoCEw8lVNiz0w8oqeHU7SlXsJuoBBMz0jJyzdMC9UaYHs7XqWU0gsoTPfEsJCNjwa1tnFqsVviPJrI8zCP/imxrFL5dIlnsgjEebOol3BuaWmwvTilgey/2alF7tJpC1IOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA6J2KJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA6J2KJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 063DFC3277B
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717805843;
	bh=ktGbY2uiAXuBx6Q0+CVGEfbuNSADutcPEEC+yWFT+yk=;
	h=To:Subject:From:Date:From;
	b=kA6J2KJVKnLo+lq5QiyU5s6FZzB6+nkJkpfRQH+ZDKaz+wrEtQmPli+q0axiGMhj8
	 Qd+lJwW9G5+eXeubWzUlVm8Xhm7is5p0B79fYgP8TUnf2k5lKe3+wwnOcJAHSatXmU
	 KN1sacRrCsMeb+Cu2gOQi+l6A7XYbzPztCIChe27F3SFGZlSOKmIgj+Qjpbqipmyao
	 oy/ewcgLefqBX5lKSrErxNRKhnA6fe92TQwg7yG+6uldWMY0gdxc2a2qLlKyUjkQUw
	 O4uO/L1lDTGki9DH5YveNeOD+DLKHM7++sK5+sL0927m4JAMvqWqC47hoMMe5T68h7
	 0O6kOLD6SrlJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3196C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 00:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780584284.1248.7979360560686565677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6037158ca1c6be3c8b698ecfd5210f3ed5c7e939f3e2c98d3eae88a300d46c6
Date: Sat, 08 Jun 2024 00:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717805842
