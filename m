Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5353C0F
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="co2UOeyo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8815AC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703915896;
	bh=uEKBsczqWycxgfacg44rc2W9W0ec/schEF4d4rjzfHk=;
	h=To:Subject:From:Date:From;
	b=co2UOeyoSy2zwtEwiSJxo4JGVhpUGoltRyU/ahxYD1Ukwg8wsmlxyVQyD8CP4Gc8c
	 +o6mPBO+Ti4gr+ZosbRsrAo5+PyK+NY+Cph6anRNOjC3yk0wZNMnII3D//5S3qlodQ
	 YCBdbK2ORFrRzd19ER2NJA93z5yzqYvu0pDcjZ7TsPN3Lc5rHjUaxWGPR/5su8vFt6
	 ONX/SI+LdnPAcGLIc9A9+usi2dRh+5ItZl3L5vp4yNKMEHRQMrvomNNkaBNPhYgMGY
	 WOCgYqeYRLIpTR/e2MILISeBPH3Eq1C7WXkvR9bSF9laKAUUD+NaLgpBmKlowpCmfY
	 6A3GzcmZ//YNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0EFC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170391589640.32734.5795224145821751820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d519569c2cb6029dac9a9386738f5d4184617b61e4e65785db0dc70c22c429
Date: Sat, 30 Dec 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703915896
