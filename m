Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA6C20EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7478EC433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670303454;
	bh=w9xLGIFvGAqp5Lc9fvJvmewZ6xwIWLeBwx3hbm4ToRQ=;
	h=To:Subject:From:Date:From;
	b=Ry/15J7MLlRh0SkKLFg6RUdfGHVwPhCobNVPrrYZnxAiT9+pVMjLCh32DvChHMWHR
	 ADAKZ2Jqjixy3Dyjitr7/qm3jIVSGpXNEkMl+a5pBPbmAuNNipQfbWvpN8nECWPCVZ
	 O3G6PEahglVRwi86JbP3yYh0qREmg26oY3Jjtq6/aiyIt8d3P59PPa560DBYJG8uaF
	 Q2f5IqdKBqVuJGtUgTtAl8813LQqIGsYKpjamz2iMw1H5Pno4gAFq84PczI9iIGRJ3
	 zA1AURjR1Z9pzC4gM7X4Sw/lQOZTUGvK4nxetpQMJnDn7cJDPCOAEssD8en86zsXEj
	 jQ2priBpk+qgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58690C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030345435.14144.6563018355472718595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f0435e4562fe5fc4fa166b0e511c4223e797bd588f7f3a07d400b7b416338e5
Date: Tue, 06 Dec 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670303454
