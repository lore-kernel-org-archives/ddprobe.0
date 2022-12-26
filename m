Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F5B36A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E00C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672018887;
	bh=HnMKXfM8/U3XTrH4SCkcrv8UzHIIl95dnWtMQnorMfE=;
	h=To:Subject:From:Date:From;
	b=jk6sCLMgUB4lU5QNzpp6hQKOiDzjOBRjonZTa/82Pqe3uRMuxTO4m2UhRFnz5sBxh
	 wICatlkxSnvt6pAOWXw5LfyGicjHQ6Zxr1jI/41gg4ouhhF3chDiAWTMGG+tmDIPLY
	 dvN0uaK4VVR99NH/D2H3ICISgKMMvFkc2ZV+WB7Ll2Ze3Fk6n6oDfANgMZJeZtQ+69
	 TSMngRotxQe3b7lMkf4k3PEB5gPHGPkBVg+18H3ynUa2hfhQFRWvVSxTQ6bWJuqNmA
	 HKgAARzi6/QGRA6dm2PxKjCpl+sWo1oz7FA7DdXi6/RvHuI1Ax1UYBkz2Bnj1GiLR7
	 OjSGi+1ULUQOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619B5C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201888739.27801.3774732645370248859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9470903a1fcb98c627392b8235f323500933df64d85e5ed803273e66bb517076
Date: Mon, 26 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672018887
