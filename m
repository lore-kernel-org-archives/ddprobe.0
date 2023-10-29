Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03692B67F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfwpgEh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D78C433C8
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698595696;
	bh=mCztQACXftWqCUXOPeTMFaPQGUan4DuhP8pyCe4BnFY=;
	h=To:Subject:From:Date:From;
	b=MfwpgEh85VuYCGcCv/cGpplAMSbrZle2JCC+beuaycO+o4NawqO+fdQpKf9LHqPPQ
	 vSFkqzaL2shCCXUkVtDc4bPuNDEWZJtn3V9Gtrd2Bby6QKmSVc9uHRAJVJMS7adhwV
	 6ASekgwSYAVdzSPb1/D9PDjgZu1eD5+lYeLY+HXixPtWT4glYUaj6pz4zh1l5+9oVS
	 PT0AMh8+SQm80fZvPjerVWHIkraV7uM1fAHpUD+WycLAzjQA/xjz6zlSdMGuZ4oiZr
	 0Rfyhjil9+qC7i4JsCrY1+PCzE9L6sAgJVCTOPjxaOqpj9FSzy7s5PrqPiyUjrfmNt
	 p48ocI527Fu0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FEDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169859569640.27580.1477468268966137079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f638d60889ee01ec655b9ab597a0e061e110ba7e91476acac525b179b5109ed2
Date: Sun, 29 Oct 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698595696
