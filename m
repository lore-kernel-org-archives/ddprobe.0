Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8981FD1
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 11:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVuOHVSC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06CEC433C9
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696679828;
	bh=Hn0oD6C5icNGT/e4GnmCtZLDtYkreGYddfGkUw5uVNU=;
	h=To:Subject:From:Date:From;
	b=qVuOHVSCB73QQg6yLfKwBZiipyX2BQJ1TmPiS7p+GImnUJKUk+KeMgH4ZexANj5mc
	 2EgBKImN9UEXDJBppTSLnEdGVxw0nJBGGDndgt1BL1IrLG4+I3Gd/S38ybZO7BAsrp
	 iejmoTie6oH1s8BhYMb2nXSQjoQRZIQT73N8lCdvyvpVE7Sxg07pZhDhg93/GRtUos
	 qeQNNq8WuNjJo9Lnn+ujJtvGPEzS2Yb7ZImXej7gHlK4lOpdcLNUa91IWIJlJQft75
	 U2H4U4/O/O+A2wm9unLK87bZ66jbvK8GXBYF87+imDiXQ/V7k1gKCj5BxMiumRoU+Y
	 ekjecWagsW6rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BCBE95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667982870.19509.3873293225371158017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5705fef166e4c866f709db1929068bc0fddc067fe2550b32cab5c0189299c590
Date: Sat, 07 Oct 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696679828
