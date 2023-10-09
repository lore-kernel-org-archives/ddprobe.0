Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DDD9156C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 17:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxFDDhma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F1FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 17:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696871828;
	bh=QuLGyMGXXTXFQ0JRzf3PX9XnQID2btVVXZPdf50NTHQ=;
	h=To:Subject:From:Date:From;
	b=rxFDDhmaRk1LbeWZT1TYlb7nOFChRSRXp4qqvo4NDOx91ByAEBy8G8F6PfBVgPxPz
	 R1n+ZZGK8u/5xIFdokGnCxpo16JwpMA9rnXPSBlatTrgJFW5cZf9we0wIQaQpbAV1J
	 /te1l2D8TBEcsV7ED2tr/9nEv74N/kXijaHBqEOnxf48+n9JSY7PUm+tOIYvCTMnrb
	 6zo6vufhjdp2NSZ1pFbPuHo2A83aIL0W62uSE5ovWJ/Ai4nQQLA0cHFQSDzvKiozfc
	 coPxU654H49/fO8VBuMRNelYL/1trTCSz9VgbIf+Zs91W5nRfbpnlo0pb3wdFA4Drz
	 RCJTSzSDIvR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61EBCD6112
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 17:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169687182873.8693.14366297370649301175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b650a5e6cee5445e48fa7033dc2bb173e09a69c3c8f43631eae816b382f191
Date: Mon, 09 Oct 2023 17:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696871828
