Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5558ECC
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B75C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670501454;
	bh=yCJuNfth7zdBWuyICJtjLx9km6ZaCi5Z4EdJQztJBRg=;
	h=To:Subject:From:Date:From;
	b=kpgTuBmVDxCgLgn2Pm0lPHvOJ+Fy3hi5dbswskVdWgO18WzMHk+LtYA24GPjrjTzg
	 2xmZirkYA95H5x6lvRWo8TeKB2rZsCs1kaAFJlgyVtzkt2JgwYlGHApC6SeAqc9lDt
	 bn8W/Fw6caJWdg26CXj3bLNIVmwoJfoJzV3GbAipwSGqAg1e0uA8uMgRXmeSbGEXVB
	 ZQWrdoh9zCAfob40HN8hC2lcbbRhfOgLkgMUnz+GQbw5Ad/Oh1Vduu3XyTql0+hzlI
	 9mqIRkjBDrD0DNWB8lpzJjnjwnDz+63OX9hUnTU42sunkmW12IyPc8Po2REXgMTNT0
	 Ge+eozcN2bACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 563A1C3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167050145434.10498.8686250559115904702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d0d9a82f8a6e95d4b1aced968b112628e7f89f2793d29e8d4a76913f35edfdd
Date: Thu, 08 Dec 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670501454
