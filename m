Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B979F23BE
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67983C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664376653;
	bh=UHgQz7kLo/IHjqfwCIO6Ntfnb6hO6qgnPZKYK2HXJPQ=;
	h=To:Subject:From:Date:From;
	b=NAkDctRVdRb9HKfuzWRIFRpchJ+uRPWFBAHA/ztNfFaQv6x3yXxnph7ERZdh1u8ea
	 /fa9a8QhjwHUntoc2HolDJcP8rE9IL/aiNqP+YIX7FdaKd8GodBTQwUvQ0q5a8099I
	 4nMnOsFx9N/0Z+gsUX9AZ+p2/BkpGK/DiYd/vEK6h/AgvBGmkCd8ZmtUArxXXzp/pV
	 9CFQvL34t6Re+nSAP89cCXtaLpr5f2+d9rK90DM+euo4tjNJT8s3LaIPgSdez8Y+kh
	 NnjWnagDQYFJ7Pfmsdhwgn/AqVkSq/Qz9mEG55ugawa+VBe33sYr2rv608YovNNI+f
	 P+SoWFoX6mHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EFB6C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166437665331.7292.7444330096220587684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe9c299720ec69eeefa4784c41ffba194554e78c287c41405b2b8dd2372f2a6
Date: Wed, 28 Sep 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664376653
