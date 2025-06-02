Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C65156F45
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748846994; cv=none; b=a/RCG8yg3XUmjqj4L+8Lccqh1uqVqV/3ATMHDNLeK93qGP1K6q9Gt1tdDVCoDr1Z8ppkYSiHD/sMQFyQ55LCJP3J0XkGHBBVA8x8Sk2Bb5neXBBn58QgwTW7zd+XGeWdRT7uyr6iZ7m3xEaPCNbgWeX33brVzLg4UC3b71nqmnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748846994; c=relaxed/simple;
	bh=eDnt2BxMBf2OX/QdkwRGEzgl1IpGlqFlsNSTBnq4cBI=;
	h=To:Subject:From:Message-Id:Date; b=LLerqBg3ZxM1/fwjT/a+gQ6isGfhzSZf5Y5zuxi/t5mc/4FZC8ggXOUkWTYT7IcJSnhVyEKRo0kmtU3yKyKfAcc7bZOr0z1qrCM7UN8rku37eLsk460nRHPrqfS1LgYIXXgzvaKa4b9DIG4Seq9fff7CgLCE/vnbHOPVcVR9daY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFJIdxRx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFJIdxRx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB92EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748846993;
	bh=eDnt2BxMBf2OX/QdkwRGEzgl1IpGlqFlsNSTBnq4cBI=;
	h=To:Subject:From:Date:From;
	b=QFJIdxRxoPldPwfT96OQECE3p5jF9v6CCf03q2n7XViP3WqRlBn/ZUOY+tP65j5fG
	 uNvrVRGwtglN1DWrIHbyDDSxWMcMSOCTXqAiXGqKXyvGZwdTSxvpW+RicA/hRoHsZc
	 0DM5Y/YeMct1iPWPqoT0PXeKV1/tdv2lxEOj7rybuJsq6jEJpC+b1HBxvQ5Gq/av71
	 QDiSRUtF7XTG6sX1wvlCCu3Tlt/SzoVKI7ncYjtxct+rwCgIKlLFKqiWXcdSM/KaBq
	 u/FTLL+xg00l0Douv0hzA5jxG4x//e7pbxPSx+E9vG8ZDm04yCzS9Druy4NWgWzTx0
	 Ppe1vYbyMZ4kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F5FC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884699358.16700.554444385877901833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1bccb97025ae0cc611e4e1f7ae12afc90d1d2ce6e4d6c7f1d9940e23fdcbc63
Date: Mon, 02 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748846993
