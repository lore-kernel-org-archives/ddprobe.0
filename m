Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7247B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A25C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672067487;
	bh=FWcGmAH+bxctmjRgZ+EHptKNbr/A3IQsGGVQjL/Nx5U=;
	h=To:Subject:From:Date:From;
	b=ZUfwYKS2pceMox0aKJvO8fZFt1CPy2FDvSvPEi0NLDySTMc+xmaHlMxFuyRrYBkMq
	 6ncKHX2pCbbd5r53GqSdFUb/f0hNmn3AtTQ3yFFV1W2pYKY7/DjmrngPQLEC0r5yXv
	 Q+SsC5njKUPLr/uCew4OcAjuzFiPSz9mmyL2ajNVI+3tJPfhzncHwti9bfWNR9yspg
	 lhA5D8sGNXDsEG86Imiz0prpEheLzt1ZCKK97IUHWRHxzUVFdx1z7PFUdN3y5qCwuJ
	 jhZRkpJdlt52jn9yT29acv8emB304xU2pLBjax1SwjiD2NKCk90fNHDCbO9+jXujrg
	 mOCIpzgD/VASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632A6C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206748739.24394.12327899668689810535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222fcd38ccb9478cf9214b4f8fb2314d51701a8fa77732168d2ef2a7bd9c06ca
Date: Mon, 26 Dec 2022 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672067487
