Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482B210E7
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 00:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7x0h8Xt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF6FC433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697330828;
	bh=22NVLJu2GVKZVZe3uj+IjKUij5yPKpn+m2Fw/dEqtus=;
	h=To:Subject:From:Date:From;
	b=X7x0h8Xt7FrMCY5v65WZDfnps33n6vRzdwJmNmhBBp3/q8SPCJJfa5oxib4xgEzt2
	 15WIApxnfy2PPvpx5CAs9/QBiRCG+RFTxpG35Z65fc+dPdnqZz5N1urft2nXZtz3I0
	 /hGNskEYUd4cfJmKKfglGk9EZveWHhO7z71sXpMeByTk7jJJkOUMtSb1jZ+mDUSIPa
	 qsFb5pb+e7doMVYgNN6WSQmwBexRuuIMfwHOomkuUZ4TfiC7VBlBy8DmX3n7Dxp9/3
	 U8U+PIiDS5W8MCRpdfc4Qd5C8tb0CvKLfD4kB0ZT8S3v/76WOt6ljfFUK3BzxZoFpI
	 TMhomoywRE9EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3725CDB465
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169733082866.11773.15217923957834875459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c00d2b79ec484979d0920354d7c535d2246ee166851c0e3da828bc63b91502
Date: Sun, 15 Oct 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697330828
