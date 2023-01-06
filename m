Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FC67B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C9F0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672995687;
	bh=RGLx9P4VikcSwsEmWwnSwr2612tXAjmu9ZUOrMPfS/c=;
	h=To:Subject:From:Date:From;
	b=hNPQchvbs3EHIdr5SmUPnZCxzEyZdzEnuFWVgf0AY7xSe74BEGdhWMA17AYouDn04
	 7IPQxbQ+26TufUKatuY2eU/yPe1pXMpgwC62up1qSYyg70GFNXhKXFLiGY6cvAGa0x
	 qZg3xficdj6rKwuuFmbAOTToE1SIJ0GCpZ0fxHZZ4l29iwuEG6Dc5I/iJyVxxsicYP
	 SDj9xkl671EObW4qW4tV8vMWE2hRDh1K+irrmATk6n0HmnSiW1RsMUVSCFDmZybHuU
	 x1TjihvmEampPMa2MTzGcf2ixrE5ELuN3lJ01tCw9jU1/UDVyF1vv4YrC1gqg60oky
	 B//2BqJiZWGFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68093C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299568741.21094.14351864346425696426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fc673830c7c4624ecd54328641feafb91c28d6083ec90404e49a5ddba68bd31
Date: Fri, 06 Jan 2023 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672995687
