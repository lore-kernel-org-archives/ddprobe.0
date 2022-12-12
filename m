Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81AC7B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D1A3C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670827287;
	bh=Zc1gh4mtB5MyYuTiOTuCzRjy42y1IvU6mM3mhqQ4gy4=;
	h=To:Subject:From:Date:From;
	b=ibt5cGDGgNH1B6kdvjI5Ss1mIj4p1MdrNbVt8HXruPpAvavgmmq0UyAteJdAj8Hqt
	 ejYomObCifhNW+9hGfQzB9t7YsDKv9ze7I1CxZfslOO0/lkCdSIYnuBO5x2VNWG0YN
	 ZHCJIMIRaatRo7Y6+davUa7FFySgq0VOnzlieWABCmx2JSXE30P1nILHy1uHnIRSRc
	 nv1BFMnvzsQmtvjutghL3azVliRDjgdoJ6YQWiagLl5amIiekmocgaH0uoGF771TOP
	 cvKmXNqtadL8EZGJyEIoRJfQm7p1KAsRz13NnQTn++4Y0891quL2oiYLCFKXh96k+8
	 kAuCDbac9/yzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A60C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082728739.15795.41473807699187949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c84207cd5925f824f76484be2d382882b3c2a9a8840633be8b5f1eb6aa3523
Date: Mon, 12 Dec 2022 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670827287
