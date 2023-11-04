Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD3E15A0
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCY9j7Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A2A2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699074496;
	bh=BW9hgk26HocZW9Pe1qyMDnnP4h2JNwRcQq0enmO5Byk=;
	h=To:Subject:From:Date:From;
	b=jCY9j7KaalFJ8Q5/TOV+t2SbowjPKIuFmXBDJ9HyVSxr8PXFLS6cajhffpsdM6AN2
	 ovH/yLi+jQ0jl0yXX1UomcROJW0VCNjlcAs/U2SmeIPG5+2H50p3AxYvwH2bu6QGil
	 Lb/tMpk5Ut7zo1wQj68LL4TMnQNWxr+hEVKO4sCM9raLerH+IUSkgLOVX5iPC1yr0x
	 jTSYL2rSRairXqekgTsl96Wg7n31EPkiZePkNoEvB+Jj02ONdmekok3WGPyW2T1OYx
	 uVDGVdelrLn+K8HtGPHVXKkv47Z9zVjoCs8nZ4nvQJ51yguO9ee5oKZp7J8kmvyfIC
	 uoSpBkNlh0eEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B7FDC4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169907449640.11558.15538568783645497761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34549c591b1d1ecb8c74dce40861dfd7ca979084a761d88efadc9c79cdbaddcf
Date: Sat, 04 Nov 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699074496
