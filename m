Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7663D8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70B7C4339E
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678801085;
	bh=KQbn4JLrl8zOGlA8oow28MeXAk7VB06DWUN2UP7MC4s=;
	h=To:Subject:From:Date:From;
	b=nMPfU5tv6HHD29yN2hzX7q5xvG8Jy6wGGesn/Aqoj2Xj+r44ek9VGFyI+s9O5UfGv
	 k9McGJCYazVMexmyJog+1ZkZ29OXRJI2oC9CPmW5+KGfu3i/Q2LYx75OfnPL5Co9g4
	 xv37mQAqpXTyux5LdhcV3ZKwDrIuIonsn/U2BKbSgmNBrCVXoXFuu4k3DGrWSh1D+I
	 Y0p2zhTah5J5R3bBVcKLVHfpDNzEIPPhBmhf5N5JYi0HLXpPurLMlzEIsJVwIbBZG4
	 /1oqhKczGjG6EW1ezZkGmwxOcDG9toIRPHO3AjioCnVWcm2P8qsC0S8Hcvx9ubeE84
	 58L82eFNVZznw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6551C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880108580.25364.951371601466303081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef7e9c01adcf186e9d660446f00a5d473ed3c0c0608b464f3a7a0e3848dc70dc
Date: Tue, 14 Mar 2023 13:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678801085
