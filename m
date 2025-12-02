Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D4F1E7660
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764711773; cv=none; b=Nu1cXIb14b8C57LYFKszleV8zL8rBrAM+/XgA1kpPVgJkEP8p2zze7UZk3Ee63+oNolRDHAkYXh1HKwxOWfdupdf8F9/a3U04koT70CaU2zCCukxvLPQ+FUMfW8klZpGx9V/BlNNBqAjKakPfnUaPxtebon/LbHhK6E5nxoAihw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764711773; c=relaxed/simple;
	bh=rQe0dj25Jj59CnRgZ09pytVDr3BW3HRlIx22Cnw/FBk=;
	h=To:Subject:From:Message-Id:Date; b=NaR71T4EBrYSX4z9EnvV/BcGcCc8eyBgK19A0VKe0olwRax1YUTFJsfoJYdLmBVs3zmHcNPAfTVbVrDmeRB3ydlbUCeWD1iOXAvfocC6LFEGIJs7GamxNG56WAjhmQUsccMmevABhQizPvf7cWtcxqbwBLWwFTiRxBgH/bpJP80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Asfp3Feu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Asfp3Feu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A57C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764711773;
	bh=rQe0dj25Jj59CnRgZ09pytVDr3BW3HRlIx22Cnw/FBk=;
	h=To:Subject:From:Date:From;
	b=Asfp3FeuOH1p8fmaLCcIRgPWtwG/WC8d/dDcX/cJ3jPZN/ihtPRAGcM6QcGqjROhl
	 nOdLc6OCsOr/3LazxncyTIq7283c9s746rgoKjwxbf02LoCcuEPTI1l6YRaU/WEK8n
	 thXj+bcZzLyECkPywmE4TYb5fDLl2NLJjpjsZQEGt/1sUBWIJQvBHecy9B08gBBwFp
	 iQ4+myHDuC4AMvVb1TQgh8ZicnZ5/qyoTXiGeZ9p5jFpa6aVdoVWQLsNLigCcVQneS
	 O1eztUCSctna4w88nEq6hz6QoW8SPNedQdSicwdZd3bkQyT2q91jO2ESrTv3AkjDEE
	 dp2vmRs/mw+wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957C2D12676
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176471177360.18902.2283698101193280824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f805fb0dc8c265391e025ee64104971b0109e2c565a7e0a62303333393c4eec
Date: Tue, 02 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764711773
