Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FC37B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6949FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666528853;
	bh=Ap9sfwze4qVmT85HSo40KeO8jyfkzaJeHmw8lpDPRAQ=;
	h=To:Subject:From:Date:From;
	b=EWd3uUNVpwfZSXLG/oI9ITMPDQoeGtjjTokLlUklzD2w7y8trsMD2DPA22oxXEOYh
	 yqAbXH+wvV1U71ScIe7vsFcWrJYNpOegv3IbFMRs91LKnPru7N59U7z+XCoJtjio3e
	 V0jOObnus8ZlHF7CKgIqKcWKPPXf4FZayzCx3c+N6YuQaZDOCAnCGDXq/0cUw6Er7Z
	 81iFQLYFDJkiQo98qfC2tX4JBrlsWgCo6jQF+IwTAh/2sHTLtzIsPMr4n8c1SUMeVM
	 c/mDhfZn819UI3UitIRpfSs+SAu9b2yi+uAIzZErU8IRru/JPtq+Hno3PkSIpYUywy
	 ZLo807gL0AFtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 515D8ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652885332.6338.2565956074791080718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb9f625706c444ea9ba6a77f7e33c7bd68b852f5a97e01994f550d6bf572e7d8
Date: Sun, 23 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666528853
