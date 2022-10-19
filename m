Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B73337E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CFC0C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666194653;
	bh=u7WadXMU2W/HjtbOW7FQiGtnk2faAie7OO0r5h35pWA=;
	h=To:Subject:From:Date:From;
	b=GH0LytwINRX14SxygQa8cs2Mkbpd68hVHgM4CLvu+agmVqcSipK4opE0hWIxk0qVo
	 JrBxH95gK3y820UxjtiyDUyBWmyMGdwdTWWScuofu1OJFuZmyonD2XxTxjgOQCT0XT
	 kT1lfORhl225zt4y0CdTG7Z9kGc0TeIAHwgltZdZgKaG5GfhhRkW4F08fFrGwZMctx
	 yb0P5mQwPB2eg7Em25EbZEyB3H9022PM0hq7/x2rjw+ULZ0yPsTtJCFRMHp9/Qxn4y
	 Ueov+GhxvXmcmhgfu+IfKpaDIvwDfLWBVCWaSWjUQhoCaDPDPyJPZUTHEPNZdIXQI/
	 I5tt9ga09Pb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533C2C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166619465333.31566.5042575739910634897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010f5dc439d021bb6e1850f9ab0417ab06156af16a9aa542ba77c8d43b8061a1
Date: Wed, 19 Oct 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666194653
