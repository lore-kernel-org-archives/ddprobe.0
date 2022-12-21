Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2FB53B4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75126C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671663687;
	bh=8WvlY1O1P7LJVennQj/SBn1JUX8Ga48oxCo5kslhV1Y=;
	h=To:Subject:From:Date:From;
	b=o9GSHPWRVcGe/q6bM1NZ0koId3to7NlzjIaK93FVLGxg0+rf+eI12EZH/4XcCUnz1
	 FLntkLbeLLxT/zFpPPacSiQRUYm/h5Mp/xV7qFk2/e3ZxoMR9s4Q2JUWwnJ3LceT+w
	 AxPcsNXZXiInuIhCJXcLso6kmXgCjJpAMn2q4Rg0fGpq6E26ip0926URFDIUQnV02b
	 2x4srgvomLsx4bXDOxuIoQ9xTcHOtLiJY5UEsCQYiBNfNudGJaIazaam40K64I/X7e
	 twoUUbDKNPR0NR2fJZFYoRC6oCs+7UMAO5n4ASCZRFnX+DtqVVzPmnV6oVSlGdrMMo
	 o9Y3pz+5RPbdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3E0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167166368737.24635.13109470935875753265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d7ab9b945a899d6a11d73cc91cdf2d53f54a8a023780f533c76fb4047e95f3
Date: Wed, 21 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671663687
