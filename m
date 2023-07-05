Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50450EA5
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA974C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688534768;
	bh=o37oixggfGau6mNog5am3pG9z/mGuUnBBxsgfY8QiNI=;
	h=To:Subject:From:Date:From;
	b=cUsvgenpCDEAuG4snZ7xmy0zqPwcqUi8aO1hxdx/ZYni0G4M8DmuS9YOGbmPD3XM1
	 DEP9J8m8vn8ocXwSRmYoG6g8tMKbVkeGuoCzVOWmksuQmWxJWQxHGOGXflKm/y+HBZ
	 T324UI/KciCxMeo+DKOBNMaUeiT/dAKXTpmJwU9tfusbus+bwj5rtpigXXpZGzEEuo
	 O99vL3t97vdMzAcfEJXUtnEr4lTnb4V6py7apkQvOc8q9MwZCgxw0Zr7z7emBU3lkm
	 e+Pcsb0fGlxDLk2C5yG7Ah/KaOdbPaD9y2Sf2OYmbO/vbUkW1+tVmDrB3bA+Xhi7ba
	 OzzoCVhTm9xzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6C0EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 05:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168853476868.5791.9400016849086358419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d51943a104e02e720000112b7054b10d6410d2035b876dd3c0d2742ea8640d8
Date: Wed, 05 Jul 2023 05:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688534768
