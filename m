Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E21D5A111
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3kVj+ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA40C433C9
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701376696;
	bh=qmMc2KbfPO565K50ibuNASEW0nOUlt0DzfTsbJY2TPM=;
	h=To:Subject:From:Date:From;
	b=S3kVj+ngTewEZoZSMMhTOGz1e8lvnU4NbSXX9XMHEBoLnAgrz5RgqA8PW3tESP2cb
	 FDQLBb23wSYpgmnX4u/q+pYfJpdlwHYj0pfVrlJXXywrLiO1f7KdITjAGlV8AomKyq
	 5XkNXQk+PhLdHAqYM7zaUHyfcLGDA6Qu8bKsc8GYwuEwM0w6e0fYJNmR3qX1WKRac2
	 vsd8WwUcdRcIRYUGJTLGGKxRLghxqwFPFLf3VZJWoFkqvnRpkj941QuMrjhg/udl9T
	 FvIkLotIum4MbO9NxT8+O+6Udnh2dff8WMpPJimXohbr8dPZU0Kk9Vk9dpuM/1qoR2
	 gtyBf9Iz40u4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F211C10DC1
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170137669638.5670.15613243766451234950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cf75cd4eba1c27f24bd9ebd5abcad31c7a7f0b1d69df616d616f18ee2438e6
Date: Thu, 30 Nov 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701376696
