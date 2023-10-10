Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D863D9F
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8xPXC53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEEBBC433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696925828;
	bh=ITwULR9El0RcA91p3LT2dqwFqa5NARGrkuvdVV5f/k0=;
	h=To:Subject:From:Date:From;
	b=U8xPXC53FloiSnwv98APhCG2/H61sQ1n49hYFbFaBmjkqK5poIBeBt2o7yIyrf9ds
	 apn4xvUCInwvZwmjzt3liratRc8uWaL0iBOpL+EHrN2+GuJ1Ar6si90gWYvBPkkbKC
	 dRmjs0l+vMATNQXtThtyQAVDPwgro34+830T29P0SW1lu5ebUpQ7Khq9PNiHrspFJo
	 QPNg5gci/fOec3GxgkQZIV7q55rboe9Wiq3pKyd4i//2oIhlgOcbiLduO01M6LHG/M
	 lCiIeBKAubVtToTfeWe1sPcymlOUdyqku6XwQt3MzipHO0NLomTaFDFvIS5IBy6IeC
	 6VtHb1UUC3dxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3C07CD6903
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169692582866.21994.9008831547493508568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1242cae3e7174a452b6681af3b70a0ea6240174aaf4762c697c5482f55d2c1c3
Date: Tue, 10 Oct 2023 08:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696925828
