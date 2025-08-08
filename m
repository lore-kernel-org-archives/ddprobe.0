Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B39D51022
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754668194; cv=none; b=pOai6hOQjzAVfLGAUSOGVinGknSJFnfU7ZmC6ec6Mi4GLCniSfx6cbRIaLrSCN06uPibR3i4KEzltb1W2vTGnhDPKF3+7r6++lyiB1261UbsuEPPiB3NxniJFg3cwVcbK8dkMUC+agon0ddtLxU2iApnTv8HW8SV88jZr+61WJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754668194; c=relaxed/simple;
	bh=UJzu/VH3NtpZ45jVylFEdqT4CC2JnXlOpnxV0E/ROHE=;
	h=To:Subject:From:Message-Id:Date; b=USFZw5tNJN6i6Qjoy6FKH9bwE6wUtriu5d+hev4tVnU9ukj/Bc6j1Dqmr+4tuvA8X5NuCP+D59V0KnLI3jXl0sOqvBGo/KCgCGOxGuggEjMJNaK/hWP5yfdPwZhECmfet2vn1pMql1WiJzfZ9Q3AJr8cd7BCsM/OIcneMTWeE9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSTh6D+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSTh6D+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1107C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754668193;
	bh=UJzu/VH3NtpZ45jVylFEdqT4CC2JnXlOpnxV0E/ROHE=;
	h=To:Subject:From:Date:From;
	b=FSTh6D+SZyI9xyHe/2+p7x+4pBoEL2nt+nPWXUua2YTHyb6Z3mKxAbGAe2FKaz5XA
	 fLl+pI3FrURhW938Zj6z1ud+HZo8WJd1bllqrMr4CfoOcl34704uXYBV48D2zONdlN
	 V/dbPY1XvHF724dZqEJUfoQpTsBwrP+yNKKFhqK9yoniJ+GwqTcGbZbFYpksNYr7hO
	 G4Ogh13KWcJ2KwXGn1n6tob5Mmss6k8Vun//MSMdOzxsu+2ICkT+bnvpj6tcuJC0ZP
	 YNREXGrndTPyNLrGWjnwaxJvVC8gz6o+5tkGJABxc4A78c4ByRDKAbiMTV0eH0/0Dn
	 wZ8C/jUEKYFnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F16AC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466819357.9130.1841501079605401102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6361e10679bbcd2a177f37b4c6021ca8777d39f42956a5ecf09f5f031bd9472e
Date: Fri, 08 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754668193
