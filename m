Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55A815AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A9BC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667856054;
	bh=Gymon1KGIxVFX1z47vtQKXYW+MUFqVkjBScCFHiuVkY=;
	h=To:Subject:From:Date:From;
	b=CwhseK9QbjXRAGnR11fTpoXUoj59EO6FeKWPVMd2ap7jES8SDv2V7USWiZbb+Fffq
	 Gsflv0d5C8ikG/Xy4/CmD8uj37YKIdWJX/SewBP1HcdnO00uvoA3cOjULROD5kQvT4
	 cYC1f7XzQ/lZZjDGx81b2TSmjPl8O99URiTHF8mrjoKixwncMGAOBKbQ8OLw+MhhET
	 0nsG+CBU3/hITCCBul8C74r7sBpzglrvBa1bTiAdWtP3k8xWFW7onlUNJsT2vTBUs9
	 08KBmeIeAvHHX7x/cJzTjg30hlcpOUOa8BNwSpRNhqrFZW5grPUvql+Rq8rcOjvHaS
	 yHaJql87kCDWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57613C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785605434.31355.10345998224541085013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23b0d82978a59a1ac4c16886d27269772d76847a671ad489eb5914a2fc3811a
Date: Mon, 07 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667856054
