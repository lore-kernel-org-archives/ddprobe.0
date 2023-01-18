Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7442F34
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEA6C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674085887;
	bh=f5/IOWDUZT165VqojinPdRezyMK3ZUZiSLRrZn2QqF8=;
	h=To:Subject:From:Date:From;
	b=ZAolNyp19DwMED1RuBuOGX+LJgMMsi/7G7U0vX1MOPZswpA1uwr0mg+xhI1ddx414
	 r0xe7nG2UFJsJbuQoF4MtdO40n3WT7c21/0LvwTO022eBz0HDcGNwmngrPmuoUmhZJ
	 eFiXZ82Ly+be+RyQNO2zROg1LHe/u7GmS4zETINvEY7FcLLpIypMW7O4Qx70yLC1Rb
	 s83biAVK8Cwx3BHdOS9IkQb3Z/z2Ei3aE2ucQFtnowhxoxvLoZDtgKNc3iLiM0ED2X
	 sID8dxbWE0w0tG8V8pU55pPHHCylAJ2qk+8z/ftS0xM1TbMcwwI2ja5eJwSRTc2TEV
	 AjEO5dPCw0+NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1FFC677F1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408588737.27829.7582341426769131002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b6d499e6827eb9ca4d45125197e6a39dedc5a19dfa3e25d99dd01cabdf29c8
Date: Wed, 18 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674085887
