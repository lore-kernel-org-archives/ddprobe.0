Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEB6A20
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6A5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673752887;
	bh=BW+m2pX44B8ODj80QrDnGj18BnlpbahXAGrTxeSkw0k=;
	h=To:Subject:From:Date:From;
	b=ffXPOg+6IJIvlQlBIH2on5US+f6IjA5CX2xBgJKdUmme+XMltvuY0Jq7BHnsv2uGv
	 7aylGNDtGvyglBdbE7gNdLcUANnqWCZHA2eCUazDAuhtuntJXGuxIqygvzpTXCg6uF
	 dmCiiFjg4k1Tn2ojAVllZmdLxfaDIjNUIy3FCOp39QelNA8A/mr/uFM/wUuRBZzz62
	 yiTtkMwDWexrStNRUi55VipreTy+tNBIzUqFOWbPHFWkGoqTABglIllKIkL/g52Ml/
	 dLpFSGNKIYBCHDuU+isL01PRxkT5HlSf+cq2TbIJw/FoYgEsGCpP0RLE//FkEeg5On
	 uxE4F9OtsRm0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61995C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167375288739.20881.15675672915299354865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ea918ecd0915a6e06ff307b780c4a6413aa6c285e93f16b06ca5d17a70965d
Date: Sun, 15 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673752887
