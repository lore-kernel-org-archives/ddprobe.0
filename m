Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1377C2C1A7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twcGUcYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94627C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704395296;
	bh=bWjYugJuuWxQO5UXtt36jNQ1iS28GO+mgNTDp2AX8JM=;
	h=To:Subject:From:Date:From;
	b=twcGUcYvWB46RZjorngnHSZkL4bCu0SDuRD38iln1kHsV7z8gQXmv/nxyV95rwoaj
	 efLkTrUH2TIzL3ifPfEGLS36ApeFN86ksgmNYGAJU/EhPytaXnDL7AdyeNCXW21fvZ
	 AaIb19GKra5scje3H6rSXUs2AhEvSO9O0QPPTxj/MiD/HiiDfkTvvUw0RF7kFY7R8T
	 +mlokySN7CW2zbJRoptAK+ScLTPZSnMXSYwZWd7tHyvYPxvlIKE9BBmIZbW4j4q6Vn
	 Mey7vPUHIfHlYld3CDfE2WayWF34Y8tlknSGhWgI5ImQN655KZ4TnUWZFIJ+5WFilM
	 6IVnZH9wjITaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2B1C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170439529642.9045.17435827027794524775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd0809a400cab2a0e99c120c0962be9720ea556bdea0561d5584bd6bdeed4cad
Date: Thu, 04 Jan 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704395296
