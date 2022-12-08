Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2706621
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75215C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670462454;
	bh=bKgjcjSJkUaCDuP8s+r4++ijSWVVPDSxH/NKTguRlpY=;
	h=To:Subject:From:Date:From;
	b=ferwLBh5Zyo9Jyaxt35nKBbIsYG+y4wXe6PpHe382QmZnjQJLE6cBfSeW+IHWuuXf
	 By2+kNrCXwZhAFLCZe3FAiBP3dKN+Zy2PvrLS8OlLMZ0LSPok2L7BRnrs2n85KnBYF
	 ymwYwzDr876WugtRpbQg8okFGp2gFLDwhZxgagAdMF2OXmVr1WeFbX5Nik5zU/Xhte
	 N+Q216PcZhe7+5thPO/uiUofGNRFRmyyldi1i2z0Pg3KfK/3eEy2pDtL1wy+T1JrL7
	 VmLH00uYlHWHgoIavUQS4XXyBBAbeDlpV2L7UJyImwwsG204UobNpE6XdaH9Wr7eaf
	 ymwGAiSe8ndQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E5D8C4708D
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046245437.1441.9107256729373993892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479c1acd8dde35c9335d1acc659d0185ab13a1919743e9fbc750794bb4f4ec1f
Date: Thu, 08 Dec 2022 01:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670462454
