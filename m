Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785FE4430
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 11:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E464DC433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 11:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693134248;
	bh=FQPc4hnROVypRs5X4xSTj2lDRCwBU+LL5hNBx2mWza4=;
	h=To:Subject:From:Date:From;
	b=IgEj975RYH1pe1NEGaEbcl8wOVTsDUlse5z7Kp/5M6rZO+W2t3Ku72j0X47U+Zrzx
	 DjmEcUcBfE1m1EVQFHumqKPDJSabu9FoUFiQ3p+Sks99bqLgdvam8hrM/vO8ZTt0bU
	 Me+MKM+44qHUOz/iM+k4k9X0W+nDLZKMARHV7AkEE1Q4dHQz4ZGCYEDPbMj0L6enAn
	 pcqZgMBetY+lrK84fboEJWs7AcrUf57fSrJ7Xy9kiNhCN7ohMHbvCFqOw7j4i7XIOZ
	 5eKYn5uK+Y5Bi4iVOKrVkjYbAgtFqYA+qitK2kmctaFhoYmjtlhTAj27WnkKmGkNu3
	 kfJuLYcq1HPLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA86EC83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 11:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169313424872.28392.6844605487487019829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebb791b82dfca9564b333a3810939015350c745dc7f2df9d8dd851cb6338810
Date: Sun, 27 Aug 2023 11:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693134248
