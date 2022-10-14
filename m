Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB694440C
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73875C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665778853;
	bh=SlTxXSjmFE6eif4IrGG271Pcss21BWDZDCLnMUldXy0=;
	h=To:Subject:From:Date:From;
	b=JeAImlRvPWB6C6pJ/nSLVc53lIe5bR2ZhRo8fRXtQw3TeG6VsbmylP0VG3xdonfia
	 Z59IZF2NvACo3A++wEyQcZVZzi1r3oJW++lhLPC6uW2dpwG+uScaHLQ0bUl3/Rv9Q+
	 nKm+13XYEC8jzD/bCHMSLUAd4Le2Df4c7SBMfSDyezxiSG6IST1g8Nr5Y+oNRiZMGL
	 S4S5UNf1ysiEsR/D6tIP2b7jYkof9Sz6ebMp81H4LXhjtc9403sJqd5Azk95qOoEb+
	 RqumCiuqvpZ5dQ140k+0qhvDXEJtUfhF2D9qbfkwfU/xJfFzYr5e+GVMlO5R82CwQA
	 IEVzqMY+9iOFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56168C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166577885334.19396.16061949541697184055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e1a557e51005904c4a309a2aafc76615b5a9bb2c0c815276579f2950eef056
Date: Fri, 14 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665778853
