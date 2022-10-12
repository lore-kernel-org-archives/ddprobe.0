Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A2617CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E04C433D6
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665550853;
	bh=1xWQ7HZeGDtHxctr5aLzWbsDg3e5KUHADI2SY+Q5Fgo=;
	h=To:Subject:From:Date:From;
	b=QwApgraZUozGg4cQ/xO3spdBJutRW16yhKmHnqg34Gi3j9tiDeSshsZvXITNEdSTQ
	 SwaeKusrEkgVpwmtXBP+rkBkiSlT/7CnOGc3Szh+JVPQc6S2CIifA8zd6r6vz9mEP4
	 G3j+rC+8Z7tJcnN/UHReTyEx+/Lkt2OExQkRsKt8lMITBg9K4im4A3Ll/jGwFfnPEk
	 xjTgOQOYXyqZUy6FeFiU5cfuXM27uEua1qEoLw/tBzq96wYnluD1eJaP7gbYD0SDVD
	 O627yaz0JCPmEJ6rhv6BvFEqE6qY/6x+YN0ky5zt+NGjltNL2zsgRfhIDdG333cnNm
	 k4mPc2Jhxxc9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57890C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555085333.4133.2713858913663526989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2845b7488c8cab6e4acbb20dc5c92a018b3b810a95e5bdf1917fb25f9bf08d7c
Date: Wed, 12 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665550853
