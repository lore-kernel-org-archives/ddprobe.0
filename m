Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5356129
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0552C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690555328;
	bh=a/1IGCEMEzpysR91ncPmqZUyBgAsNnmg+ShlQe0DU7w=;
	h=To:Subject:From:Date:From;
	b=ElyTIRvavIjjI78mat5QVoATGDcOtvmlKBKa3wrJIfsg6JkLpzofmvBMLGsYW4EQ3
	 2HJuREkNWMW2iGXcSMq4z93ZYFB/bO+CvQBgLh214h0yBAi1M52S7WVJ0zr9LyQ4Rs
	 SoxUEXks12ebCfLLRSGv39GCI5yfSW7GBDgdgtXDZ3UcGQXaMBGa1C7ZKtvTe8kiw/
	 lLDQUA1EqYjMsMdfAlIogns5Hf4lMIF5c10behUCwGRbc6VGyR2vuVKrHcNEWIIXSY
	 kf9XfiyjeyHFNeyrgxGt0w+u1OYt/vW2JCigsR/A+Ku9PghI7MRiFZv9KXvVS5kx8f
	 U6yCA98BGrM2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A50A3C0015E
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 14:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169055532866.19348.36608494748720410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48e88986d061075c1b9f7e5906cbb9cf70973dc37896315eeff2605a23679fca
Date: Fri, 28 Jul 2023 14:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690555328
