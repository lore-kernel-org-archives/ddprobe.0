Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7071F627
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2690C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686878948;
	bh=URFOEEWP1cbHLPG9s86vz/CMHnZNSFunHwlnKUF97/M=;
	h=To:Subject:From:Date:From;
	b=t9u6CVp1FtBh1501MLaYhcp1yKODwXaO0ZrmlWTyvrIblai3GM9X5rviwJold+BBE
	 +yRgl2GidnId73azPXRl8Q8oBuRnLvis9+zzdAdh7+XUFW1G5dFOr4gbqLrQCwd1nP
	 CrHWSfTpEdIf42fvkNuI3IuVWjU/bsz22qk8VVBFeCSHDkysvRn+BGQLKITns7v1BJ
	 huL1m3mlk7BSBpiUB7aqgjjLcuZ8QwX/2WUjalaYU2jfVDm4qru5y61G9zR8ULhD4F
	 Q/UB+OTyF3phjaEG8W0iji5F8G5SjTL8Dze9R+NQ3dFT141B5xak5euRy+mIu/vLTS
	 xX7SDyvKHb58w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D3BEB64D9
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 01:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168687894875.29773.4698792666214604870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01485899379585ccdcf1936f50a77b6231f1600c356e093f6b830d50f6efd92c
Date: Fri, 16 Jun 2023 01:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686878948
