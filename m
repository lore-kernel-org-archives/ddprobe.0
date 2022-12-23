Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38BD8476
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8B2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671804687;
	bh=6yC8kMVTeseBh7u9WuBrFuOw/xnR5praqGLFaxBPyag=;
	h=To:Subject:From:Date:From;
	b=mGreY3haKmFC7+KeSagS+RnCLVAcnwa7eULKMb+jXry/momSs8irNYW91dIsXvPfM
	 1Aq+rJE+2dXnxT9pIpY9It5/szIDnaW8mNpQ9Bvkgjr33cp/VwlxnFVS74Qk12dU4v
	 G7BwyrXqcDK/570DC022WZ8vAhxgPsAC5EhjcwuGz/8xlFXVFdldhVrUi6365hvXnr
	 Ah8YJ99xe6HsEtFZQoibd9IZwipC9nLuJJg/noB0+lD5zWW4c/7fKXzC6k84Zrdog2
	 noTwErokzmQ6mUNbb92YKT5lbIHy/Jx2TarOVxfDYtkQNGWHz8xJ+BEZppNKrn0IKV
	 wvLoF0jrrsztg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621ECC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167180468739.26695.6423250764053243559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd207c794091b6455ddf2cb25a907f65608dc848109cecd671711b3a17458c88
Date: Fri, 23 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671804687
