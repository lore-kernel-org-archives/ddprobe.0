Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E378F9F6
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 23:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0185C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 23:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696030568;
	bh=8jq/gULyv6Bgn7au0rM/6ryOBxr/GNLM1fBFDNdbjxg=;
	h=To:Subject:From:Date:From;
	b=uafeAVeKWcx/Tt/w6cguTnZzKaB6NPsD8LsM/9E8EBaUM33dXO4i8HGWnjTEhdnSX
	 hfeJvshM4gHkP3NqNG3nNSiSd4yR6jnqrZexra+fDm9KQcN5WVkbMGeTPDya9KrIr0
	 lKJnDSAoOIXzjGwu//fSjThiFu5v05Rr2OMNn30LaNdHav6M7LuJ/n6x7HNSThj2TS
	 ns2MtQmLSDkao998QQjnIBWdLBLCYOJzb3zmuV/HMM7Luyg75LOI8eQgFsadXdroO8
	 UKLzleZN/iG0VDjpcDjdPL0pgilEw+LDrdU6PeH1hXptdKjZP0YaKOGxFxg+YBGTd/
	 mhvtpSCt34vUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF215E7734C
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 23:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169603056868.3752.7306318567822140317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1079fc9dfd1f70e71e6b947d79c29b679514a4af9b83f8f96f3820c82d96943c
Date: Fri, 29 Sep 2023 23:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696030568
