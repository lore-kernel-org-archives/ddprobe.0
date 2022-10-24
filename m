Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9217B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7083CC433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666620053;
	bh=smfE3N0t7gApqxydsbK4paSXt14Rbw1X5aK5XdbpS8M=;
	h=To:Subject:From:Date:From;
	b=Qpz9DOu156iQYa2l7pfmRHPMd7GC5w6YJkt1Rp+zdhNrPnkWY1NT7UT6mH08QC23A
	 K9nBSo3ysowRHVVGgpK4il2C50+SqMXy/4pgXeYeo2bwn5DsHIpxnlVx9d5rSU1N3l
	 N04ldhLl6jPeUAQlduXI549itD+WHruXbloakpsBT9HgKdoaqK85IEEIdIBFtfI82F
	 g8ivsBnpt8SpSfD646SbiPdFPR6yFVlLEv7Ov1QwGqxgTNb6zYAOnkeh1N6nwrmwSF
	 Bocw1KNfiRG9JfpYdLlwpTBGiXiFBn14EAVCBqbRS1tE1sKC75ClvoMOQuNSv4PuO8
	 3cNPh2+NWrefQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A12CFA3742
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166662005335.8921.3222497479875517230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924e1007e09b6ee67be5df605d58a0851fab132a09926f50ab39b4f54892dd50
Date: Mon, 24 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666620053
