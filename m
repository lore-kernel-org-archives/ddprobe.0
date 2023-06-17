Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7648363A9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:00:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE729C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687024808;
	bh=Oh2pYty0iMw/lwoHTMoxJSMDPH+zWVTg/dEFf/SJsK4=;
	h=To:Subject:From:Date:From;
	b=c5tQ4/2+NRvPlwODmYqxC+OtkbvZ1lZv2zXx4yEdXBy+IS8+qUewXv71Lv2wht4M7
	 ErmrAk+LDKcwhzMNfVxV4c7a4/b1zWEHjP1Opl1bc4/timnBBXZoy+VjXeKrSzUg9F
	 Yeu/cVDqGKknlH+mPk1uaC+lmRh5tIqTbZ3QdIqMoP+mZJpamZj7Pix4jKR/PjiLWI
	 yxKGNW3WhrQFmTBidIgCaq+PUjinlrsXPcsjV2YaURLuoX2Vcf46EsegDhXahNuYoB
	 +nPy69CGaKbOMDnRQCf0UfYVSoIoRYuxJPII4EyLcWzbOGQOHVR9nWSdVGSaVSiwZ/
	 bUcer/iRaaE1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE78EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 18:00:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168702480870.2202.16147824227313294409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de2908d558687d53989ea7955363d8fc95bb18f9b8df541512bd66d41e656471
Date: Sat, 17 Jun 2023 18:00:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687024808
