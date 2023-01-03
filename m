Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82772104
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC5FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672743087;
	bh=jpeKCqtq5kSg4x/OkGU+TGzljMffgM8jFWP4Zd942L0=;
	h=To:Subject:From:Date:From;
	b=MRlay6MpcGZD1wgTTp+0SH+cPFOvE2C5jO39RxgByiYbKdNYcOFY62Pomfp6M+5yC
	 suDqj1NNPxYHQuN9vDhJv+ci0Q6rxAtacWgNn6XTSjkx8QLsRGux6Jidp5Jzb0xQ3f
	 VcZgbFcmfJYWFZlZ0Iob2m3mYxLKvl2CLvzGCtnYZKRQRH4AJ7Qwa1eeeeffr2YRFG
	 raZFW90+LIonX0StkijliYv/Ey8hE/9pjVvkLp6Kp8pBtDb8eMFPuobXvko2p1w5TI
	 WO6t0DMnC8CFDDQkW/s+8PGzpfIeQAf9OtH0pRpkSJ2iRUR66LBI10qpj/Oks/Ui0W
	 GEZRTeOSynobw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6187AC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 10:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167274308739.23688.14432334151349695802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab49e46f9c3da9c554e4e5f414f2ff64ec50a6b93aa36372a6c9e45fab52166
Date: Tue, 03 Jan 2023 10:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672743087
