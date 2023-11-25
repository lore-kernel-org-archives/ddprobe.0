Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD40CA46
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVlbh+bX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892AAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700908096;
	bh=KxhPI18BFAdgjOZT6ACysZovNumR4qgknFb5HzJ8uz4=;
	h=To:Subject:From:Date:From;
	b=bVlbh+bX9MLHx1RQ09git38vB3xS5tDI8R8VgQXQz/HXlc0JQi/SbVoQG3fD5Ub/Y
	 Tajqif/V+anavggQ7mfN/lOao8/9R2ZV+F0pNDZib8PL2AGk8m05gbk+RldmZUB0IP
	 Lm8Aa1eca5t4/kjdbpb91ZH1YgXLcWTpoE/vEFlmY6WQTa1iJguCAGAPeMpQcuB/eZ
	 wIAm6ZlBibL7Pkghs+fTK84HMVxjU1GFM3p3Eh+/X81wuy6y6w1ab4fj+mTl2E/egJ
	 xfrPPTKU8dE9pUuQStLNZtB4Tn8nZEYRmoTuev2u5kAxPrjaWPlFFyl3sSrC2XElsi
	 PSsxKcyPFumvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B5A5C61D9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170090809638.22584.12694254573441529949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52c0f4c5ecd73d59707ee7a5e1e2079b0aa3bc220842c8276d6742911e775b8
Date: Sat, 25 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700908096
