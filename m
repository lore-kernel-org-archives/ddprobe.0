Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7309E2A9E4
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09743C4339B
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684399566;
	bh=lpuPHZ7E0VQcW4W1m8rhlGH5vQ0SO9om5oMjAMZ+Ovk=;
	h=To:Subject:From:Date:From;
	b=X4SznXBvOAm7p6eElwWTOXYMSwFYefmNoG/6tS8ne/KM/YYZQWXSjS4dsoUBvtWZm
	 m+K0ZIOV/bknhzwRCVk7xQ2QZvT28AgL+BRrRP07rOBMhgD5T3gxlYSCeHuhXBEgFU
	 r1OfPxWrPM9LEmHDaTEq6HW8H4vofeGq2b5qtTZ/N5KeT3F7AreqV5LsvLrC6jzhMc
	 EFH8AJRtraHIQTvR63gGGlnIbmRD3AQrggl1xDSkY6IAsinA2YljlrSTr/gOUKvshW
	 obwa0lekCFzoeUwUxLDkPyFcDD5Km98zd/7kf3a+FdpuwQJ81EZTiCuyWHB6hoh0OD
	 c63B2U9LAjqDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7CCFC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168439956586.10683.12336320088527628958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5398e55ab9c6dcc8a332478117b37edfca1a6a6ff5f3ceb9576a44c3ce8d97c7
Date: Thu, 18 May 2023 08:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684399565
