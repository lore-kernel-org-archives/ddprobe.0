Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3381FD1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B753C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665413453;
	bh=rm9ya2XaCfjDpvE4IL/32xtqRYfXiYDVsgHdFEKrUto=;
	h=To:Subject:From:Date:From;
	b=VQN+6dw/cFJuPBq7uLpAFMilWiZ0r6g/s4CniNnhmT2huOLbHU6CgVFBtybp4i6y0
	 967mjrqVTXR92UYKOFqBh6PDBfcDmTp7WT6ENBU9qukqCjt3/Owl1xllqRIRrBtIC+
	 N1euayXcvvuvQMB8wZsIJlq2Eb2ZqZBiSNTzy6b0S/WMNG7lZBZJqVhH2p8gAY1RMv
	 SBhe1JVcDtQ+irbYBUsToADrUJ6wFMX3GFT4wXA+eB6osvyhmuyGaesKnThd5aRQcJ
	 VH4oW9skW44sgbY95sxuzSZV+KvRrYwH7OEBXwsAeVQZfa/HrgtcBPoSA21J7+iiFo
	 WiEEnLst7dnQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE41C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166541345331.324.7972607854790555197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf24906340cd1f56d81f3a5e677b6416e656f5467d32e8b21ab43d7c4ce1e0d
Date: Mon, 10 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665413453
