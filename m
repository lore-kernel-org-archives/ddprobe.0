Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C012739A
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD47C433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666552253;
	bh=KT2QhncyCmYFT39SDEOSptA6vsq5uSpVwjaczNhkeAw=;
	h=To:Subject:From:Date:From;
	b=f+H9bTszyMuEOPZIOK7VgSWrr+LQN+kBfRPGdySivfnZjssxsLqyh3kMxzR++FCSo
	 hEvTNotVGLNkgFBRKtZEnsO4F8R2c5Cgg0s69Y1eVjsH+OHrnVRVUuQDzSyrJL9ZTK
	 5A8e8lt06wpCxyv6gx5eP/XJ9cz+HKEJqSniV71pmDe/vQ2rGueTzcwPpOfgI1Xat9
	 yO5HhSafugqeZ6QEAKZHK2jP5uc+rTGvzAeeMvvncb/vw57oTALKMAD54Juh3Gvjss
	 5Riv5ZF++NzMrcV3IRYFEMdwfAOdIPA7mIyMT8Ejd5e5HD6krhX7z27tOCDroykv52
	 Ykr2x1gVQzpTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57544ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166655225332.9384.12761807626810982908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9de49caeac7ccec5040c4861b8b6df0827e6512e4baa2cc3c884b6f32fd3b8
Date: Sun, 23 Oct 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666552253
