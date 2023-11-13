Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E023D969
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGcLMFVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8721EC433C8
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699917496;
	bh=vELhsjE5g+WMKnNEPhEGFUMXnKNV7u4v0IASk2RLxRg=;
	h=To:Subject:From:Date:From;
	b=hGcLMFVNkcIZlQpKMe8kfkZ/r/jU7VidsKkaP8fdcUdcFa9lXAo0Jq+biLWvMG55H
	 xR01NICPyASeEpfD+NKT65/tfEuuvFErSWzRPsGiBC0htSTgG1df8xuoBLX6jiiMoI
	 pXVDX0SPKirk393TOJJbBYL69W7TbpSgy68vNdIWN3FAVRtFBGS8KQ45oFusXEQUBx
	 GhZhahhiWcQjkm0XrNLBzjzWdaChiKY9Ff7R+AvVCPexVI/2c1sKfCx1W9xDtws/bp
	 wkDhyZ6wBbQJZle4ttEKheN/2UNpeaBPqVVolTIh1vU9p5MZ+TMFB58DLFkrr1BIN+
	 3BtnSz2RZvg8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C06CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169991749643.15141.12269369310135297575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fd3f7186f7a308658ae340a20f0cf56467a957851a0aa4e7e863d57454e557
Date: Mon, 13 Nov 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699917496
