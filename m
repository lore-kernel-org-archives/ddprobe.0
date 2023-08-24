Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA641100DC
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 15:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06D5C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692891848;
	bh=s3BB6u6E4e7Fgo4ePb3+zQ5jOugrQy2MG7KXIQNx51s=;
	h=To:Subject:From:Date:From;
	b=RbTIt61418pll82XVscaGAlr+SzFKhmJr/M69PJ7nxbiCEn6M8g+jVQ7z647+2jJy
	 dglp/QuRbZmWflvFdHKkuw73JkoxeHJsBrumLnMix1QXXHCDKYowmNEuhBi9uZvg1Y
	 H9WexVcSw3vb+qh32Wuz5+92q3aK1d6inYlhb17lROR+hsjLGqfPISESIWoOk+UkGz
	 YM+RvgmeB0MmJPHba2GwdfgMx8mtz03kZO6niSzHY2ITaBvZjv8pvMJd3uW0gzd84h
	 moD1vejT9ve0pXbskPQlLvaWs7Wc8Zj8/wCmjj8BxLW9Ceypr2pIARSs/DYzEWwTMI
	 v9lHSaUwMk4mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7134C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169289184867.1640.2294368341930563787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41192e2d9d8c5d524836d5fe316fce459faacfdc39c992aedad70be60ebdec89
Date: Thu, 24 Aug 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692891848
