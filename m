Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0E97B
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80CFEC433F0
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670986287;
	bh=8677kXSbZ6F3xYSsOvnPDj4ToK4MlV+0UBR0n3Taevo=;
	h=To:Subject:From:Date:From;
	b=c/BsBA0HbvaregfDLHOCf45Gp3GOXLxNo3uHekdSJ8nnKZAK9J9r4oa6HBG0EHKsL
	 BiyPPgfuenI8Bqm9oCAMrleAvrX5i1ufvYsvVQDBc1kiswtI4aNok+FUvZ7E+D+gkd
	 K88QvbI2kRgiuu+7ZAe+uKequs2qqFqJWHeDQa+flwJbJnlWzUHQ5+Ty9FxbleR4jF
	 2PJ/oogCO1xAcy74xRMqcV9rEn5QHUkkuVeHr5XUBzJU5vRMOdGw4rDN/4aE7ONSPd
	 06av6P/08lXCurztruyz0GpDtVteZhTYRa0u0SswXHXs6R7+rsgDFeFG3rd8r6Fi1G
	 3mHe8rdKvnkng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67289C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167098628741.28963.5397277044834373993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e56a40852c8555173b5ff56eb26ec0d49b20dd9fd5e5374328c5bc2a4f21f38f
Date: Wed, 14 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670986287
