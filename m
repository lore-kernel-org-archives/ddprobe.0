Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C63DC8C6
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 13:11:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 075E9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 13:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689685869;
	bh=woG/Au+d0OZJj2B3DL9kIA6+cbCnYJ1VysKaGA1yzG0=;
	h=To:Subject:From:Date:From;
	b=YpaTmEzm3j3x7XXXMbtXjvLt4vu2NFi7UNQSQL+40U+HNafxM4+qE82zqOOdadHPS
	 RlElYhcYECTxMADZPe2pLRVH+HbX3PoqS/Dz8BKOjIYBDeyZWEcvU47KHynojdNP7H
	 UwkScidcs5H1yNEnIvU4rSwuo/q33lTr0kDUKfWfif5KWHL+MoE36agDg4Y8eZj6JS
	 M+wUIVrcxPdYI4dwi9edXbwjjI+spIwEXgBijFpFED+2aDNsMq/SbErmEvYAOmsP23
	 Y2yYlZooqtRZ60pRwmHePZWoTy09NdxAhz+ziZEDFVXgqBFnFkcZBekRMedHKIuV3M
	 8bD8RP2Bh/WAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C15EB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 13:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168968586884.23467.10208642168422288358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16d6365baa881483f62807c81e3793e20b70dfe0ea79044b86035eccc68068c
Date: Tue, 18 Jul 2023 13:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689685868
