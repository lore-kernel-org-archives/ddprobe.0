Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D85255230
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744032595; cv=none; b=LqpRpwFRcXdv7L7cyV+h69wRfeCUrf8zkix+WHiwHt56AIy9g6+0EsHWf7WlxYYIhui16nCPTFgt905IMoRA4zZncHPEHZ+FCUD7c98gdAAIVNnozt2Sgcwj5tGrEKp0r4p1EHhFTcEfnvkwwW+w/zVrQ1l49oYBc9khq6baHNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744032595; c=relaxed/simple;
	bh=e5twWmv7pysi4ZmgCH8Hlp+tyHbPa/1c1QXI9bHBLV4=;
	h=To:Subject:From:Message-Id:Date; b=Il0TqhwzkuYMzyD7f53BVG2hC7m6f8p4gmY/S5e0BdBKMfwHAD++y4IpuDl+VoVJ/IiUGNaRZnq+84D2NVNWoyjfEuNbd99svbf2LWOYRK7wYJDiFOT3rbG2+aOzse6Gtp5EcG6JdIb+rLf6s5J1AEojRIVi5MeeMbbMx1g828c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1y4OYpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1y4OYpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2742C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744032593;
	bh=e5twWmv7pysi4ZmgCH8Hlp+tyHbPa/1c1QXI9bHBLV4=;
	h=To:Subject:From:Date:From;
	b=e1y4OYpjzwZSqx3J0y4oNEoruWDNtFPPoC0738/N9BSkgjukMKo+0SAv9jicztgJB
	 UqlqVT0WvEYHTV6Tvj5RP/r07HjRU8Mtdk5We2nQqKtPSLwkQ8Td2OtB3YER4goA/X
	 Je/ld2gRYJzUnZ/3Uz5fs5SAlfRBxNW+i7LJ0yEl8iPJtVYw15d1JADUqvANkzAmt0
	 LBLvLUngE8nh54s+fRJs0ALLBLHgfO7Fg0jButEWYZjRBIlSlpPPCZZ2VP+x3UdRvx
	 jUhTmGlN31FUmnpvvH3tQUPwvB6ExJl0NSl8EMf+yrOCBcjSKSFTurUa4oNUEI0gXI
	 Ew6TPxjtJ2uyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA5FC3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403259364.10602.1187088554230625124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ec14631431406c132a894e628bf8dd30ac0693adde2874d0c76c0b94db1432
Date: Mon, 07 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744032593
