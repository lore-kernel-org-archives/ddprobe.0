Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10C71367
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 906FAC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672060887;
	bh=kXISV239YeuEAIhMZ2dkHCIBlyjVi0T7Ka8fTeyIuLU=;
	h=To:Subject:From:Date:From;
	b=cfCQfZvMYrcAzKV8I2cl0sQ+3dYukqXeqHaFI9AixLBjddG+4TkkZKRzdDpbNkecI
	 rFf00/qk4H8o45xBnxrkBZoYG/xN4MP2hAmNmQSWB3kt2hTPiNw3bnhOkPTm5ZfCm1
	 CKHBETEsSV6BgAN8gHFg554QJ7Mx6Tby5LxnQdKM75pYPo5YS2NqrGXAKoahKcffVW
	 UlW1kLWIdQnNwXKiLzUcfL45pzVOb2AEpbNzggDNK2ITRDVyMecaNQh/uEJ/vbZq+J
	 PXRxB0GXziuL1kPkNYuizJh520YTgV1Yc6v3P4vzyqOQpZ5v1e4bkmmoe+azqCEDAx
	 8dkPx5+vDj+Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E58C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206088739.12195.4276545570553240182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30051a00e4530ff003325da1c38c8d037cb7a601832b3886993bd676185d276b
Date: Mon, 26 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672060887
