Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A55E17993
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762214994; cv=none; b=P0Br0IdqwvqYRyQPGP/Kw907JsAUdAqlaRnOwyBZ/h9a/snVYI1lniF57Wf0HkA/UiyCIv3SaTRH8c/oWOO2ooUebRAN8n010PNaOvA2nMVwgyQjcvu8xXnjB2HaLR0iztMacoTGZw9s6r1ChL2LwxJCj6YtZg0ZX5AlfMcnvrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762214994; c=relaxed/simple;
	bh=YLNb5CZzfmRYaXy2yEs+i+lT92FTSRnXzxnQS09N1Ao=;
	h=To:Subject:From:Message-Id:Date; b=MzfxL+wcsS4V24RYOCKJGUrA3IU1dr4HM94L5G781H58QCT6tJ2LaLjdPB9rQKpClTpYew6fEYwbAXmuBM6IgKMAB6J0Q8Ec8g/3bGu1nkmLjoXq6iKyy3Nlr35RUxdK4e97VWescU27pjCU2NRc0fg8j6B6XMxe4yRobpxx0EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/q7vBKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/q7vBKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8BC113D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762214993;
	bh=YLNb5CZzfmRYaXy2yEs+i+lT92FTSRnXzxnQS09N1Ao=;
	h=To:Subject:From:Date:From;
	b=D/q7vBKMpOszTosM/qdbTeH4Mz6bI7YNCg43hpRvDofmavc2WGFKUt5bVrKcnK5SP
	 GvIQ8yd55dcXSagIk94wWnfZMitn07BQqhp01FA0bDCWYVep2D/UsIvWF0jNSlobVh
	 +2LlcK2JHKVSsfVeT9N4f/3UAivqX108+Fg6GMJnGCfkgMJ2mKwTGznS2XQnx1f1eM
	 7aleIT44O2GfT/VcL4hrtzSk/Rzf3Ghjn2ejppe++s5A+nJGqtoXs2TeP0XVObJ8V1
	 iHIbJ+DMn+ymuLdugJ2jz4ru77L7H+nlCBHt7Z5lNhaQ/+TQxRMkPEqw6VfBLB1Vy7
	 JEt4DIgtSuf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F06CCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221499358.2121.12641688043397983567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e179cb8da9b5d3908a4268850d7db5f4f1c239d4de484f7aaad99fd6a94af6f
Date: Tue, 04 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762214993
