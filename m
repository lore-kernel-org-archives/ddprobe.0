Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065CB49899
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ1R/7/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 785ECC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702928296;
	bh=Rdw1X8gqj6PnA3d2UXx/AoBG48W11rKipxsQHxENXsE=;
	h=To:Subject:From:Date:From;
	b=rJ1R/7/o//78pEoH4IFQkIexsQCIcikxPU49bs/cFLpyLND8U2sMlouqInIIGhOch
	 zTZUQUMhOQavMCyZHKC/gWQ0xBOB/8ltbUvxoouPUSSUKKFrv0ecNHUR2yLZoeNx9t
	 ddP9BnIkZj0Eq9rLS3Tje8wHgFJj0Uqp8P750fGxW1lNe8CFXL56Vzxs16UcyBpJDb
	 M+fONJPNqQHr3i6syJOfUOTBUP/QuDaeLgrSGE0QEFy0N/yChDA2q0TV0TCyLCDaCN
	 4CmoNVH89Tqyq2lGpmXjOdnjs0lXNX8Ln5giTRRr+5rHIywe6oK0fatPkiiBvLG3Vu
	 kK0CYvl5tjlTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D221C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170292829637.18223.7571916912292611997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e608717d924c74fc763520ec4dc8299c463560ddcbd098e91b6682595a1c718f
Date: Mon, 18 Dec 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702928296
