Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632A06FD3
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9B5C433C8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689324668;
	bh=QeIrVmJ2lfL+oNU033VUvY4I5293ZooUf9BaiIUoW0M=;
	h=To:Subject:From:Date:From;
	b=YeR2dnkuf5BooRFdFa3tEXnLO5CN7eiC8OPVvZY4WkanHSD16uNBW/b/R0pRky3d7
	 6j6BCzIVSj3H5ymmDvxeJPd5mEzza4TzluzLZvG5erJGrfHjonWKp8esTOk6lYkvyX
	 9qSjdchIgJaEsWCeMFs//lYqFUCSNak3mOKk4LzHkOQ0gkwB/ZfMOM8F9QpM5qPXTr
	 p+fGKGdcV8IFHwsZBlUFDm9aUIwSnhT3u9LPjNoYBI9BX1rQGF9ueLL4wWhU8ocoSL
	 ul1Io4Kp6zA56/FcuYevCSowY68kLQs6me4LDvmjakEAlgeYyfVmeaONyLB3PYH8Rz
	 sJsaDj4M6mifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FC9C001DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 08:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168932466871.26074.17298098772421449338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb31279675cfedf21dfc291c30a5fd0e6b908c52e60b6e1f7f1c4acbf3580bec
Date: Fri, 14 Jul 2023 08:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689324668
