Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2E63A5C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6791EC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663669853;
	bh=DJZT+YjjXmo8l93+mg4zcFUduMRLtVSTovtRpWNNN7s=;
	h=To:Subject:From:Date:From;
	b=ut2PsDOkmpb0aGeYROjqRkmKJi5Ozt0gDrB9VeR6TrEWC0/T4OOmBGxoiY7w2cB1Z
	 ACbKbNKbJUYEexE/Po/FNAr4lfyV4PCzdH8NEES/QggnxOpjAQYrPXGAO3ig9Fxd8j
	 2rpBx441BHJ0HxOEsLCyhmxdmmnO+DHsBc2FP0JJTeyqnaonItX1ylUnlB65UY8y4O
	 NnncSEuNvMxSUVjXvYDr2CUi8jB5ivhueydtgEQxV+1OzkG1H1E0aftB1o5R+9NsaA
	 QD3Zcc8oRL/OAoAy5iVYTIcA3pbIvum8rYXxzi00fQw6EIUl3pKKnjY/M5UAa9Dn7S
	 PtlOx7n4SSayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EDD3ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366985331.2473.1912090743327830840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a0dfe094afb88dc66a91f61c301c5463579c6ef3cf401cf03cc876a8721ca62
Date: Tue, 20 Sep 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663669853
