Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065F01CAB7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JO+Qhgig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75860C433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702243696;
	bh=DD9WLUkcT+qLFFhbxpmVNaUcLE3fkFahJm2eHrN1NHs=;
	h=To:Subject:From:Date:From;
	b=JO+Qhgig6/1Qz9EFh5WPehcmJdw1N6NIaaiT7sEm2AkWBVgbqv3gjMsOImd1pPUdq
	 6FtjNulSIraGS36iKKJazBEbSsxQJdtlT9R6u3RzvLo9DT5yflaeM+kS45Cilw1gzr
	 QpUs14d9aJeTcdSfd9GSaRREx+i/TRXFPBtjtZVy9l7eUfMKmNDI/mmyS738y5ngH7
	 zPfxD56bg47LWv4qOpdRBMklBGwy0D+LmaVwx4+UBxEbbXmTmRE1rsF+evFA0fhxBV
	 Vy/Ht4Jq2b896jUHz4HSkhNjZgLlel4YELDnh2+l+3HkMOqN8Xr/89mJ1F+fOdnG0F
	 UQp04sjtKb8LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8B7C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170224369636.31317.17811091246508675830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90f71935ab0de26a1484c59969d8d59327348e2a916d6fcc6e4b5518a10e2a76
Date: Sun, 10 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702243696
