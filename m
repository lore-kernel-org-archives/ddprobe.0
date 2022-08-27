Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE82442A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBCBC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661631652;
	bh=9KRKvIxHdCVfJvpxeI+gV+IumxDlCZzPk3TRCzhsUGc=;
	h=To:Subject:From:Date:From;
	b=qy5dE7UNKCEqKtV2HuaIqX5Ndc50DF5oy8eNjcE9QwojHD4dyTN3lDMtKILMW5jtZ
	 0znoIBelVxSJKLIuhFE5MOjVZUDuunZnssBcSgCYv3iopEpJ6DX7BvsFG69PwzP9qB
	 KjagLGiLPtG6VQuyPoiDbSIH0tq2/Gi3m2OODJRzHh0qd2GYcONb9JUrDPIZ5G3B6i
	 68xbKVGpNpzsbH163mjRPawPErFLwcqqATBcLJCLKfDfZs63Nz94i+6WKSQuck6RfW
	 tTKt8OG0D5r/AfONukVFZtRLPTLHMEsG6nCglF3mHOe930HQtyaTcfxQT5Lm1+oSxK
	 clAcv4VMWTuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A84FECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 20:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163165234.14382.17345035328587726222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d6aa4eedc84a2bf6a3f823a476d3269a478f3f3c58c6f45638e312270d4cc7
Date: Sat, 27 Aug 2022 20:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661631652
