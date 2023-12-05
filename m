Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19816AB9E
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz/fLz7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A27BC433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701806296;
	bh=GQEZfUJg4m8QkjgSJHtrC2bFd4TX4VF8Zfm70myY/5U=;
	h=To:Subject:From:Date:From;
	b=Xz/fLz7WKPyyPP7Bx+CjusRLMeKAggRjWKSvWyFmD4m1tRN2a9N7nThlwH1ySsBjx
	 0AdFIsI/7lOlCJa76l4Mo+AJqT+nAGt/0Kc6QtNQUySSxuyjKNI3UVilzidBi1Rpq5
	 wZVyazkId2b/cJSE4CTZxIZq/JoPeWAIiyZIl+TikBlP7Bv74MywEbvKS3aiZUGQSg
	 EaMSn83do7FCOfk6casNU823I7smqFI+INuY+Yc2Dh6dEIvUtQXC+AQsRC4JfExYtK
	 QcbW+m/nynTfujYPX8uEDpJXSLL8f4Jex7j+JlG8fvXDyflyM2AAed9Jip1LM6+hv8
	 JZKnrdy62M6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BB3C4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170180629638.7571.7911348068117852578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b1d7edc4cb74f550b3ab6911c02c09820809c0c0495c59b915a652ba705bc40
Date: Tue, 05 Dec 2023 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701806296
