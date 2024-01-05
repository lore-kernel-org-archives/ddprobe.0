Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D8B1DDD8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCSv74dV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC64C433C8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704438496;
	bh=nqqboWHE00eLh4UVmGMbOHljcaeERDREnVbAq0eXErw=;
	h=To:Subject:From:Date:From;
	b=TCSv74dVFV46cJRyYn3tIVc1I09urfrSV6hwKFIbNnuOw5HXwr9IeWRZVCzifnGlk
	 n+/I3tiI4faxAFvquI4+w5FXB4FQEOusmQ8R12d3AoL+95NnpZ4EuenexAW55WqF55
	 vDtN/lhT9RYa8zEJ3PJSP+nz5Bb95ujfgjSYCeikOov2DScqD48iAK4UKB0mRgC0UB
	 yvmx+Xm0D06KCs3/w9oPWANdo11GTPmwbAdEX9WzxJFcixvWDwjTEgyt++c4AqxXai
	 5Y9Gz412FMcZe3EbLgGWB4driX2QlCgw1Jhzf+WCwGRC8udNFK+M44mRrFNsMLCL5k
	 N++B4XV92IdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 709D9C3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170443849643.25689.13771727433092267450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc6a407c9c63d6548ff1b01d5b579caf26ec5b41dcaac19a75705bd5f008d4f
Date: Fri, 05 Jan 2024 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704438496
