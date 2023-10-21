Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148811FCA
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANTQQyyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B171C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697882296;
	bh=CDtdv9Nw388NsJKR3iS9MWn31tRTdZEcGki69VB5KQQ=;
	h=To:Subject:From:Date:From;
	b=ANTQQyyflb7Vwc3qNvFpkouI9ns7YutAqLhi54yvdYiWnQAnie0AbxNtKS4PzakkJ
	 A5xhC6u3rE9em+3yD/H6L3H8ro2d++1ibBwR05j0DNIWo/I2awWPmGelZXCzWHZynF
	 wuU0Im+vDwUC06+5bq0aKlApNSA5Ijsprbym7o6XpCpXfeDYhtq8Y4d2Z3It+pCCzs
	 ANjE/3zVt8ayZdSYCtZcZCmTE0+ji9U+YrNuSEd9dxV7SmfKonFz3oLriveJfPnAts
	 g/UoNzxZfr4yfT8rE1AW5Byp8O5TWjMZH0lrluC5pxyz0Kl7PfexFce8W6YT9D9Yh3
	 85gpv3h6Y+T9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BFD9C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169788229641.26487.10063744997437042018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ad47a9cf11db9465f7ca542132d477444841060314345b158842668d331313c
Date: Sat, 21 Oct 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697882296
