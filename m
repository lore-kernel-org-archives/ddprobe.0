Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFDB1399
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 08:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D415AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 08:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676192045;
	bh=jZkfgWe2hwjMgeoUVMQRkcpL6i7kVVEYbfnzX2qV89U=;
	h=To:Subject:From:Date:From;
	b=ZqEYF8u56U5hzM2SzrGKR0SQ5q4f1iqK5Xs+dWx4wrA9HNGZ6dDJow/mf0VloRC4k
	 gFePBNcriepM0FbdBeBouohF+qEP5MJhTihFQ459lVy13C6pbgkw2ynTeBMz3iJ1fR
	 pdotljilOJMwrcRrdTlmL9SfEo1UKunSdk5Wratj2cxsCpXvUCTYWW02UxPl8RQ6Zx
	 fIwDBPnqI2W4OI4f7LVm9cPJG9V1Y9/8jMGqrPbCIYHIWSdTJ0sRgmZqCmKKHpOP2k
	 5UpBl1zAmTBNPlVwZ8237+2umbatyv/NnxGs/8hjNrrfKgz7xWhRQbQNj27Ag/5cNc
	 cy2jbL/LM0ylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86CBC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 08:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619204574.21494.7167875804658783787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7f0c53b8d21ba55b6b7581d3a33711a1e98c4d03160d02ccb18aee568b28d2b
Date: Sun, 12 Feb 2023 08:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676192045
