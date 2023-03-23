Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9663CBA54
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 17:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4A06CC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 17:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679593146;
	bh=P29Ih9xh73DGOQ3liVYGOlgKOZA0jl15g4zcnw8D50s=;
	h=To:Subject:From:Date:From;
	b=A5K+BvOPdGph4fwyegMwEfnYRz5jZzon7OvPbsGSww+QnBYsqdv4mK1ys3tLP1lOR
	 bWnrIw7ehfaLYhgXuACu7I3NLB5XLIJ5cfCgCA8njWJpeNN3N4bn9nGJVvyfb46vXA
	 bu+r5KNi41+XCF1P2jieBiIND3t5S8IXWFf7oXIBQT8CHCOgYQ6cDyQV7tlcm3v7gD
	 gcGPBkNIH/W+M3CuseWZffHEHF1I1RCGT044hFN7C1Q5V4nsfqRu7s1U59/DTNTFft
	 fIlNaCXFeTY0dYCdfmZusu+Pe7nUweegyVHyQNxjxrhsrtm2LpjY+acp2+R6SLCuT9
	 /Trt+Pac8q+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15E02C6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 17:39:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167959314604.23603.7017413028573649737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2960dedde53cc5b202b5e99d23a26805c2978a8c3ef9ed6cf3e3d11f36392d
Date: Thu, 23 Mar 2023 17:39:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679593146
