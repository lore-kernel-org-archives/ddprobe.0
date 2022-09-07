Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B797D28E3
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3BFC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662590453;
	bh=GTZmdYlxALjW5ZkufhQ1yBdIyjrSyb/C4dTY+MKBWpQ=;
	h=To:Subject:From:Date:From;
	b=D+/n2vplDNewzqfpK8E3lHwxM5Iz0bAn/PUIHddhGsfK6WpIIqJpGyu7/JsWmCAmT
	 Q/jmPHHkqsSYZkmEIW7DTiHD4PtV3ZGLkGxXAohek5ajIiGUbX2UEt8zf8e0F5myog
	 mdJFd+torBsofywSA5/9wjpMcOdSN9w2IRRQg4p4XPEVPHwP9+Zx+XIZTetsvlbuDk
	 t7H2rCqOWHBf36xotUjHyhvqWbvHmQgDVLJGsGVOrRUDSRFxoN+lK+qrQYP152qHs5
	 6+7Ehmyvz2mIpdGOBRIpF7MHdb7+xSQ5iLxy5kdgqGOQ89nQ/C+G/KgaxEYT6Qqhlj
	 gdEfCWF1gTbag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55C09C54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166259045334.4455.15831255678157285877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2261c68abcbe40a3abafe66025406df848850c01f4852c0e3bfb08a2887c7f8
Date: Wed, 07 Sep 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662590453
