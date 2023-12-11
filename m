Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85E451039
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3R8vzsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76858C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702327096;
	bh=S2Jxos+wTjmoFP6iRemOm+SXJT40Zb4/9MOiuiFnSh4=;
	h=To:Subject:From:Date:From;
	b=I3R8vzsB1z47AbmQQWuGyHmWtO7qmehTKnDVi8QBRYMoNpHFHMne2+j7lukfme5cM
	 szXYjYXWoE4dQSevXjlFlfVOaWcK0DEiCDp0qwNonmFNFycsg9IFPQ/XRUNduU13jF
	 qIck8YPv7GurBiRMwSnwESH5EzvxTvXixFm0S+MvE209bCm4IWjer40F6sKpdJirFe
	 9ZQ0xrWAqwgqAMxSUcVIK0u3GxlL0/qZ+oLG0/2RRl+RQY1t8p4f/TjSLcWXu+6oWk
	 n7GO6OVsRyEvZyup7CcI7bNzkTwVLY7Vn8Fp6vXRqpqH/py+M+IIwMmFmul5QvFDBl
	 W16kkTGnvHmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B090C4332F
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170232709636.12532.12989159713822992780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d185d7d629110ae0510d2987ddbddc6e58f0a37fb41ef954a8496e314b5fa2d5
Date: Mon, 11 Dec 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702327096
