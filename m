Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFD0BD37
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ABBC433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674318725;
	bh=A7Km6rg62W26g9vgzUh6c4j22fkyABzAntnVfUWkELo=;
	h=To:Subject:From:Date:From;
	b=DHcJWeplt1R9GYeN2hrSkaYmi4Tw0i7Ma2g93KwaxNP5ebULpL3h5KBvW8vqKSklQ
	 9cEDXCwfFMU3aC282qaATRIG8kniNZB//6C41sThjLlLL+TUSSfowpA2eCFB+IrerU
	 yZS5UOnsjIORPoI3NkVZIIYzFF78sPlPWt6zA5Gbr3LEZGI8/jtxtCdZGCk5VxFA+U
	 C1hxdoaLdW9ycVqVMt5rQH5clnHmVMcEEBLRbwo9nZneNI+9EEuE+krPfk0buQacE1
	 XQTQL1WMY9nvZudZBRLuauzyemDxThWZNMaskZI+VIZrPqrr5DJtZlT1t1y7bnYwLD
	 j3GekQ6gKU9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C13C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 16:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167431872573.22650.644337330002990889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40f3c922d4cf0163a07efc9724553c48189a06ab70a8cde43c292433648cecb
Date: Sat, 21 Jan 2023 16:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674318725
