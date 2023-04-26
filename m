Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B4B63D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3C9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682535425;
	bh=IEo4vN8HNCIiuwj88i4nmUSkSS+AG6QNVWmDerjWe5I=;
	h=To:Subject:From:Date:From;
	b=aLgJcyC1at0PQA7dsGyTovTSvPgwo6nkEnUsXiKNABTS1D3u0LqTpQ+mlYlVXEcYW
	 r17fTiNIsM2mJGUBFGHnDWmYANzWkdtArm4yEEZo8QmnAmaNwbt9V685Sv6c0jBvIu
	 sdsh7t8mwocUs2owDQ8vRCT/i3yKmjOvii99UswOOB7vw3gSdRBP/VS2FjAXYyxMzS
	 qwUykbmnYqPgS2x2WJbHs1wUzMZZcmDcxAD65b8WmqCKSiB/4Y27viX16ieEBmmhTK
	 GLFh4p6UeMNhfurgn3pLrH21RFFMy+TXjZh799W4APAgHqnaOsmrjb5NOK7y4pW+RX
	 EiXW8nQQH12Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E01C7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253542572.8151.1044125996757347161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a02235112c837897766ee94915bf4b7e418276185cdf218770011479f5cd89ef
Date: Wed, 26 Apr 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682535425
