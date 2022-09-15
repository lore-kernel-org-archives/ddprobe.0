Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51AD3205
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBD1C433C1
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663233053;
	bh=yGgA9g6NJKKMVrnevdbo2P1xYiKZcZWmuKQDSp/+TCU=;
	h=To:Subject:From:Date:From;
	b=ZrCBM/dygQ5jR0MxIU1zpGhb/YiroJLmto9gGUO0uXNUrMUdkhsdclK+nHkrjUhtu
	 LscU12Rc2gmK1K9Go6tGJdscoJ4vvH3ryfYZXppaNv4u8yv5LodHE6zv4d3Fi6gftH
	 IC0WdzUlrohBj++76BVCPcq7fYpMrzaHF+n6Qk38dyWS8i4gZxX7fEp1T+jd9YMLN1
	 39Is58RRsxCflNrwtITzVKAII3Gv+19s0L2UO5mOVq+frNFySlbvZ+EW6j8VWTRHBa
	 xN5BRyQBhPFJGWDEbrbdOM2ueQH/pzlcYMiKpf/GfahNnqS6XSV9kQZW7Q44QgsZ88
	 FZVb2r5u4ULng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6111BECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 09:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166323305339.23433.8181399273110783686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de7f2b426e907a59b026062f09bc16aed240b026e6134064da5673f561f29bb6
Date: Thu, 15 Sep 2022 09:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663233053
