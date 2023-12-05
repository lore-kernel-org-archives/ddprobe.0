Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F116FB8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG0bOQ88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F26C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701754696;
	bh=VeB0ESoS0To18uJa28aRrB4i1/mYnXF5IrTouuawrLg=;
	h=To:Subject:From:Date:From;
	b=rG0bOQ889AKFPMzxM4n9pbboXdwWLB74/XFbum2MOT2GlJLUvNi/p9GvuvSThBOgl
	 UVpmPQ4a6hf1wSfT1//sQjkxcxEu6nlxWyAqF00/xv4gqDxrC958jOa/efglSK0UBw
	 56eKyNFKdUA1CKs829yfrMkca6Funs2RVs6file+lzkfjxq6cMVT8oywtYPSCT+aHD
	 b7yBNy1+JUjbeJMWmlOXOWWWDG3YpdJ/FZTJHiruJrH515nrJWbwzTR+lpO6mCLnk+
	 7OovGw53sX0z9v4+dPE8i5j+a2EXTlTvWDejGAPLp1Br3B/O48A8KS90VDRCEarbfJ
	 O+n+tzpaEgiyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D140C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170175469637.21554.11422505718650749119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511587302d63c003227022fe93a94f813b5336c90506489d4c2a1719eba67114
Date: Tue, 05 Dec 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701754696
