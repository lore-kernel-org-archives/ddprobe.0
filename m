Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C644538B
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71500C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667284854;
	bh=meeKHpLa6NMrB4c2qgMkNXoMlCowmmk5xX8kd23jfjM=;
	h=To:Subject:From:Date:From;
	b=RdufVu/XffWiT533BO3jwUgA5B7j/GMHINSPU13J+sDDwc6+R/OSTC0sjBuX7i8Gd
	 D/P9MdnCrneO++JZ+LbclqazcZwQDgKgqTRGAZQgUhH0CIgRqrjPbW2fkdGhLLRNr5
	 tN2p1er0wBgnP3p9MtD53OPkK5zMkRdOsU8L0HSYxyl3GWpd8eGSVcf0RBGSjzTu2M
	 9FEylSeJW7yt/FLeJO8zo8i+X3MczsrP45PRFAw1YgbF/hTvtp8B6BDUmUZT6BDTu3
	 6mCTlsydq3K8qnnCFOjYuHn/eqE8B6nGLi/yzDTInM4lFPVnAA67pIF7EBGkHM6AdZ
	 kftuCsdt5tC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532E1C433FE
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 06:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166728485433.13227.17778901556874874256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86071c3c526e77c813b536cd3aff734d23470665007eaa778b99737778ef4183
Date: Tue, 01 Nov 2022 06:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667284854
