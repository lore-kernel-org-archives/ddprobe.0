Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FA7A937
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0156C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682638326;
	bh=U45IdQgtd5roap5CkqZTJ+i6CqIgwrrFkn5so0rLsrg=;
	h=To:Subject:From:Date:From;
	b=WibvoQR3WMKDKuJAt0JgVWUSTPDjGKcnzrU+pv+Mxxlr874s7zm/L0z0vXPcI2a85
	 UyOImR8XXI0xPwEO1FLwuilG0ahCyVBmahM3v+p0WFFmBwNxCpu7i2ih75KWWYRnWy
	 J6iy20qzy5hO2dEITpydeSQziOnhClJKPKhaqqNkHOcsfGlaSoewxiXlszfD0c5qIA
	 N61OL0efeHuTYR7zyd7zqn1ECbaxbj4VtolMG+CAX3ht0fL9asL055gah1eHeDl70G
	 yvEqNJN9x0VqMLnYu8rQKnu0LQLuhyKtbJuqE60qeZzExXc2XWiToKFuR5+yBt4keG
	 86G7277RcC9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4A6FC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263832585.2590.15292876183444757550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8cd0735b3093f1558701710922c671a8b72540dfb6e681cc7a42da51946eff0
Date: Thu, 27 Apr 2023 23:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682638325
