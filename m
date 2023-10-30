Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2060D1C11
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYR4lgPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9768CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698645496;
	bh=JMuYiEM5ngJrYDo+zr5wggpMGBgQQGtzhK1JYIWZ48M=;
	h=To:Subject:From:Date:From;
	b=EYR4lgPWwh/UAsDEEZzv8soShRsBiEPnWkKrrDAV29nTH6KtUTLOaxMEvGQVyJGHH
	 aLcSb1U4Yk516ELW02+u0InmOlPM+ZgGk86m9Em5wCYXdTr/Wf40WrjHlzrgYzXSA/
	 xNfcIJKU4WmpVgoERac5PDc+N4soONDBavUmsTWa316mP53IH5rxk7E/eLX8NG2oZK
	 x5zML18mBTuu5NMLclcPDiNvTADaX7xAlM4XAymLxqMJxe16MBxuJ2qOmvcOg9fSoH
	 FttgpYkclzFLd8qE0ps76nJxTgGG9I2ohoEx3ZrIDUe7jMqnIh//raYqIGt4bP5HIV
	 +QV0S76oD9C6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78007C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169864549645.5215.15746897360350902587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae7a413abff977007e2a2d0bf683af5f4e3a5ff7a8bf0f94a0d3720733b4681
Date: Mon, 30 Oct 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698645496
