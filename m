Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29932111A4
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF7UKjEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C683C433CB
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699349896;
	bh=GnTzQEu7oXJIih8pw59p8AJOpx3ihbg1SMfWgg7QiU8=;
	h=To:Subject:From:Date:From;
	b=bF7UKjEslK8rXKzrifKCE9JzmXVu1k6gZTai/si1TxigHjNne710Ttbd7trFUC1yi
	 +pR/9t3JKvMIrGPtnuxvc1T8E5pO1TzE7fQWha4DoaDeU2C419bbX8FF5CE/KJGs4f
	 0g5vS2obeQsIni3FyzXlFsQB6WYIC9Bu1vgPAtBKVyAkd6g1ry4tac20/YBMx9Lxix
	 SWAH9RJ6ft3jAnmoqYJvORwmrkeF83jUDD/aypvESfJbSWwRJ04BhrNJRYyF0Q/hw+
	 nzXVCdxNNmmDklVpErEZCU8vrnZuVcwrehtgPGQc856LL8x0XZOoE3uqLqxLdfryyR
	 Gu1a03OtYiHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D535C4167D
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934989639.8970.3163073876508113917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2862c106e21d8035428f0ef435d763c0bf9e03578d96bf010c4213473f8376
Date: Tue, 07 Nov 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699349896
