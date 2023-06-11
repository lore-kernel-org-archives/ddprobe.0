Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B959A139B
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 05:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20056C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 05:32:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686461526;
	bh=4Ajt9HX5oHe0azpDK3ZB5MjQVtwNZ5VR9VuRMnCOC58=;
	h=To:Subject:From:Date:From;
	b=aTIFYiZGffY/60kPK6RY/OBAPL6ojwKQSSPR/iMvgRbmnePaEij6tn/psFY2Q3syl
	 UVO7sOrEf+uccvKWq5TnU+NNiWbPSX2K414Be7Zg5+MSozobW15kegOLMjKlEQIxxa
	 d932CyiLgTIs2KIapeCPHz2MI7Cre46a5vVilG3DGY3FykxmIv0SEKra7/sZ2zwGXy
	 O2TT0NKWTTyydF14kr12b/x9j5RUAl3/ajaRjl8oAShBAIUq+TjD18DNTCChkCRFfi
	 dj/+YwVopO0WovPNd5PjVIYeXaF0msmKjwyKXoFPxbJ0d4TjRMXBg7Nqq07Wt7HnLI
	 S6mQMR91ZPu1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2E06C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 05:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168646152586.31537.9183068629015238451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eccbce883ae82cd944c1652778f02eb40ed435f438d200ee152e09379f8c777f
Date: Sun, 11 Jun 2023 05:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686461525
