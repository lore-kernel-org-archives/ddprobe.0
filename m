Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFE36FA4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7681FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671474087;
	bh=F6evs41yyPbzIhnHvOen9dpRnCtYBclvDlThyDDwbvY=;
	h=To:Subject:From:Date:From;
	b=J9EZmji+3sfVIOxtjsZ6wtPHD3KVZXCuIRxFX4fMgGOs8IpLaclCS9NfNStcqQJ8h
	 ATrPS0otzYO2pacZeKaHaB1jRS8MYcrVC6ehmKHUfx6S+U4pZ3r+KvKPtcnzmSjKvz
	 1h/6OxNcy1inXF0wTT4mClIyysj3Q2ab9NwF8xjb5f2b1ORAUeTpdE9hzZwUN1pFZo
	 Vyq00/G2wSnAAXPC1PJZ00wZiSCd6ZpD/O1NXua8BAGhKNu9vwKxHs3gVP87VxSDiM
	 ImmMwxK8J5VY3ddyp5buyQzUJIZL0xpKIvLv3T1vbwUArx2sgIRR6QeW1d7uF3901F
	 p9e92WLR2hkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FC80C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147408738.16090.6745386195593578897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71b71948076af614e89e5ff8aee56031d6b4763b619d34079af415d36bc593f
Date: Mon, 19 Dec 2022 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671474087
