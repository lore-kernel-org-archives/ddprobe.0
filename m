Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E585E23A3
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DAFAC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673307087;
	bh=4S8Z0u/mWJsV4KreeiKCvAIzTdgtjTVNiO/skA6kY+w=;
	h=To:Subject:From:Date:From;
	b=N6AWbuka2uvCgWQUDXrzzbMXtfnRadxQaLF47yB8zmthBmHZYAGqr5THSCPKIhyfM
	 EHZrObDxFq744BIB9Lune5f0izVNG4gjbqChinRwBQDkNvmfBpgTuljviMOVNTP6gK
	 fWyTMgqUA/agO0YxmR4VwuXkNkHJxyo6t8jJ+Ob718mvRqHfXJnM7o0C06EUCLn/G3
	 tqMqJKX7v7GAjhCPIT09nxOgLmKEYTmEoFWqTOYKDtpxk0vcsOEqLA5GTjKc27czHE
	 khQ0zaYTHJo7hGwi3woWlsUwUa5pdeB2D5BnHbm/DJsjSV3R+bGSuXAtc1UcCUm5bB
	 JspeMy1IcgxnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ED5CC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167330708744.1840.12594901712234668900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e95ab3c12b01e4ced8a2d9724b3964eca8707fcf10ecfd5815aec8db19f655f
Date: Mon, 09 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673307087
