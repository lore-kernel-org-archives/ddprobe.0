Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677A430FBB
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2681C433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694209448;
	bh=L52zewZXVPNp5sYDXoVAY0T4ITt8pBiaYDdrxIGzodo=;
	h=To:Subject:From:Date:From;
	b=nM2QdzF/zUgk8B6sH8TByAvs70zKqJ3wYJS1Ua55580UsGACKyKUY5Rl+l1QyyE0x
	 wl1HDbuZGgLY+kPpDz2IslS4ZlCMrYeFb4pHriM6XFjO+dfUM4joILcEvhPaeq5aAK
	 bqssalPoXLPlOxE5jLdeT3hW89iiDu8NfYvuFXztI5C7Gn25D+6F2N3ekULcEDN4oW
	 one2qZhOBAL0ntAKwbS3/91SAOOvDFgxOdATYKQFDx1qdLTuoBSYyiS9RxgNyT9VTJ
	 4FEGCupSVMzcfbgDJBjlq01XThf3L5KPSn34RdvJ+TUWF+PrMcdy4MRl7FU8T7/w1/
	 CANIqO8HSRfbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76A9EEB56E
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169420944871.6976.15140482785345004253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b85147e5970a9c569673dc5ce8677a9ecaf545823570ebdc8a956594d9b173e
Date: Fri, 08 Sep 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694209448
