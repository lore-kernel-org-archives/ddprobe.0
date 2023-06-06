Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9197E4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CD9C4339B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686094925;
	bh=2f0/ypiaY9rDH+ZvsFJifHogqfw47Y5IUzHj0lYWuek=;
	h=To:Subject:From:Date:From;
	b=PM9PdLGs2cHbOLeHUfQOdX7EIN9T9gyEPEQTVnCeUob6EnKsxg50/CY00TpKlKVMu
	 mrUPCpoYpf/LXDv9UUBO+xyajfD0P/ylM4xafEGTiVKZm9xSzmOELRaSPKdY708aY0
	 Ibt8+v8XCiefHPMSE7Ipl0baHmy2UaGLti6POb+eZCWeoQ7ya1JPk5gc56CEYG/mQ2
	 oagJhnzEqv/9A0JJL5Dye2ucGeROk3s6WtUhw/wvRJpmJUVlZ6gZrHaMzOE4zLasPx
	 8wiLNT2OJj8+/HVCsKLizvkoO+jRX/W+EbK+vHH4PU16wQbE0+BXi3+w5anPijm+Su
	 pRe7GD7wlZU/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A49C7EE2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168609492573.11429.16229128545213751098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc42754d680c713b468ee7a3742c875b09a7b3bc1af980f4af73e386c09a73e7
Date: Tue, 06 Jun 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686094925
