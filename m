Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D436136B
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83600C433C1
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669720854;
	bh=7zcKPGigLHsXzet1HSJS+zL8Vu+I2gUd/2hl72/nyAE=;
	h=To:Subject:From:Date:From;
	b=q5rFg52t1Xo0vxiarL2mMXEno1dvVMnAeCrHPA8AGP8XWeyer/krwbN6H+mLqctpr
	 km7sZ1VHxyu/X0hQlv5HlKDr9Ms9IwYTEIFSByYxI0JmaEj+rQ5/IMHd9iT0FsBtb3
	 eVQKaGmkhZfJT1bpNAZ5AVAjgCikF9wPi7N5hNdqYRjpo18PlV0mxKpRajcH2Cp0t0
	 GymdRhmIPsY92g7x1vmD1eS/WGQrhobVbCInzp3pQgCue9pB1yi8ve/swTQ0TgrorY
	 JIi6KhBfAyqSioBV5KAlf0fliaabzimjyfYjoDxJrt3L4kh6eBXZgEznyTFcvmyzwZ
	 Ng25pVwQc6d1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68808C4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972085441.9233.6015805336430022827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047e17e50c16465cbedc411465de0be2d5e62f99a60f62f3ae279b385e4cb814
Date: Tue, 29 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669720854
