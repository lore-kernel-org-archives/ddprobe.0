Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B75365
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79ED5C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667280654;
	bh=ccP0Bi8Eevs9DcFwM/U5atA3RRQekkeKdUxKlhxOghg=;
	h=To:Subject:From:Date:From;
	b=VCaahNNGwWCVWqFEtFKwnuaWOKukkmpsFwHllMSpgQFfLpU+xUiVwhjZ1AFNugJBp
	 fHAr/nTa6h6rph5MthOBciJrb/DU6VXr++X5ddS5oc7ShgckqxI3aQfWIs+ATiqp68
	 kWSs8YwgiwIFycVhpMrf4qyMuaFYTMAEXrLuxTHALmIPFHWyjifJDSyP1MvrkWff9R
	 OHPJQzMboxai5oAF03WBfgAZr6ROH1uzNV5yqqbfdg7GuKxx/FKSiV3Jb/vTLmb08J
	 wa/E1iXfm4bHvEGGBC/pA2WMWwcwnro6oBHAoNImmxpCILaerTOQXasQcioIYKbozA
	 VoTawOBag9a8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60476FA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166728065438.6521.10144514030276753454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bc1d2bb103dfe47566f603d0f875770f9410e7bf892ad99a674c5efa4ef2c9
Date: Tue, 01 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667280654
