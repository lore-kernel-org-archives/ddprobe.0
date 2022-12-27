Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F606ADB
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95E2CC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672174887;
	bh=G41ti+4H9DkQ7coxwWQzvbb9E4i07B/seEHbioor3po=;
	h=To:Subject:From:Date:From;
	b=SowvAnJTldJPiY+b6eVM9n1bek4xnAxOZ+iJXlQqcDynaW4s+jRRBjitFrJaEU22I
	 nIK5lXPB1CgD28xIzbOynXusxjL69vhOFAB2pSv4TYjTcyBVGa3WufXxk1Jg0ZcTou
	 ClKKEX6jOkpj73FHZeGos86D4QEzxHVm984hpy1ZvpRZqemgQRTYabfpnIXYwwt9Y+
	 A3UQOvKNNZWa0pC+P8/l3PtWP6oUA6t3x2JJCkU93KtZIlfHpDVSiLcl5zrtSd83/q
	 LB1dFawKWgHLPdAbS4Z3FuwxaMAqtu9W/ly6oiASk2asI9+8JBnRYJiQ72myoo+DNs
	 //Sxznd+sNEwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B6BC4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167217488739.4734.640230947566620413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e916af50903080b9c50920066f8827604865ea57ab7445841b622c1ba67c8b98
Date: Tue, 27 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672174887
