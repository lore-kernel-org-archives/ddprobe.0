Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 590BF7C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 12:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E66C433D2
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 12:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682338925;
	bh=Ra8SgzxFiqMnm3FBx/a76PoMa9Lewjw3kvitS0Sq2fw=;
	h=To:Subject:From:Date:From;
	b=PthC65Gm0O+LgaD2+fSzlQzoSbPsxpftKp9MEMGp+pqhaAwQZoJxFYYOWTSQzXw3G
	 hrFGqtfcpuM8samMNy7ito1qGv28/9IfkcDfob99Rjwx0vEqkEvxPiCHSX22bAlViW
	 5i/eJRX2dIvC8+uOi5zHy6RSj6aA+MXLSFGUVd7hlNpIx32t0hau7DMrL/hSrEpPfB
	 KFd7g0cVdLpQaEU6lDDdfsLM8JnIzv4XHWzHZRCcNlE4MQcdld0/Yix2rgDVFlqtZq
	 hbTlknnKG1aABEslFzFOGIm7Z+CP5kTDmf7kxOBjRtqhyXnrygfsSfaThq6dPx0dz7
	 FkwbPPPX9AXSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F5CC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 12:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168233892580.29541.11339445580004381951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3349de0f363b7e668d63d2adc7b7f53a52ac8a9595d28d18827d4603acda7ab8
Date: Mon, 24 Apr 2023 12:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682338925
