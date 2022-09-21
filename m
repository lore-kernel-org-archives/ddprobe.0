Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1B61FA2
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7728EC433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663746653;
	bh=cpFC2TMyAyo0Ea/i2YMZ8lbF4cB19y8ZuDx3fwHYtoE=;
	h=To:Subject:From:Date:From;
	b=H+m/nuRnGEJfw9C88399+vsEmt8M5pGNgyAzpPxnCDQsv5Bm2S6KUzfTE1giUnVWu
	 5046/UJ9wenw2LvIXYCk1Vn+Vo8wuKdY5yyU0lXErlar/JCBsEeJCTUJCNGtJLEO8K
	 C2gfzWzniOpzsyByiR1vGw9LFHnxVRdxTblVhnFo8GGZvkvz7jdQRCeqdZRrWcypOr
	 PCwgabiIhbwrxuxauCa/1G0sj5ev0ttq5M03D8k7ebuTKSlewkZUvr40BKeq++g8Qp
	 bxmCgb2OWGYRH0RwqQp4uniBG/m1NPm9Oml2sSZSfsvrd7K67AC/Nt7K4EHfvYy8MN
	 kf0gcV5jofTyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60FA7C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374665338.11924.12505941195074386062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0477dbc237914aaaab4206e18353881e0769510f353b5fc92370f03e4b2be8a7
Date: Wed, 21 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663746653
