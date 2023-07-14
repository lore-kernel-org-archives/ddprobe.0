Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548A012B99
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59CBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689344468;
	bh=CZxSusWP2dtJCnN/DqUDim51zr886OeYdt6jNFYOKWs=;
	h=To:Subject:From:Date:From;
	b=uxG+VnBshcGyFTx/1YAQbT2FWro3Enmc/P0gH9Z4uvrjEQzpX/EXcefnPXmeM0c62
	 quJzx91yEQhB8wUIBXkOswnhmijKS0C0Wb4O0414TBmSbQ2nRWFD/b4xHYb4GRRrzz
	 OtfBEWtAs4yAMDh1nfZ9VSJwvSmnX7+sbymVVR+/LzyuI2VGKkE8aoxnj9VLWHC9yP
	 v7mvgIje2kNyYA9am6XRTcbd5go3rFPONIu9mZOId6H4hbsexrWF9pwJPORIitMF74
	 0KfPOHo5gEe9NH0u4KOIyqtWw8FDXC82B3NFTW0JV1453DSMkd2Qg4F4p3aAQn1KHO
	 8RX60F8h1o5lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71F1C001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934446867.32227.2690864708317354955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1471e50004672ede65e279e9e50a6d0e9905ccf8f39f3df91cea432b0fb0a6b0
Date: Fri, 14 Jul 2023 14:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689344468
