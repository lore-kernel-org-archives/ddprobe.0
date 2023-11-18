Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1205D5382
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 02:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/aXtKqm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 927E0C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 02:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700273296;
	bh=awy15tPpH/AdcjobELWFSmtUphUp7gV7L6eorVXCM70=;
	h=To:Subject:From:Date:From;
	b=b/aXtKqmd3ZB752f1f8ZOmJup5pXRAskDD9s0Df5IeTrxgTTowORGQRY+Hlq53wCT
	 yFNd3HpWf1gD/JWTKT7u73ArqzhHjnBof3X06Qtj5tZPnh0qVIJ2kYks3nVe4NSjI8
	 AfuoI5xLmYwe6Ov9EAniGfUu174iihnNPjD/7oRv1arBrYqR2I4Yl9g8XvOtosYVhC
	 pUDZLJwPi7LoAvRd5wzzDEZ77EHaUnh+abKnzDQTo8clbQ4etHqgqb8VG4dSjYXIId
	 kY95tDQh/DEulCbJYafy2xOvOZ11P1zh6MD54RYrjD56qnRzbM4N71Jni2wlL/7LWQ
	 IzhlkIcc7+FxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 728F2C072A2
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 02:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170027329643.11367.7113496957739648757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c701cce8fd40c9791f845d6f3dc706a53564509807286f553e655bf7e817a762
Date: Sat, 18 Nov 2023 02:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700273296
