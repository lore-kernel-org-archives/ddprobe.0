Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1A1EBC
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79765C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670644287;
	bh=JACzi9CB3/jy4HfpG05oJvy0f2V5CSEcf7077621Nho=;
	h=To:Subject:From:Date:From;
	b=LVk6HZhA/6/s//6mp5z+V5n3az3w+pFXCDRvVUQpnzFLUTqIDfAMWIkW8V30c4aRl
	 ZufaepE5oHSJbsERdCSdmeX4YXxc2Sg79mCX7AoXFIoUe2uCb6XxdPw0PBQxqVVARx
	 QLrp9dnUVm1MjU4YPqwhMROkAbnHa5mgFHZdDXvwG1alyAz56fBl3T19yZkdRZi+Ch
	 S0brKzPfiMTpPRJpegLl2hd+ZdVY1yVv2Ion6y6ougw53m3eEJgv6Nrj1kgC54ndoo
	 2FCXMZqG1P5P0C3fJbJbO7omBjJVg3n15a5aucabE+U3WF8dJCutrI3laGqb2ENF0w
	 x46MnpF/oU0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A87C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167064428739.10506.1715167222832941647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26527f48bfd0976567cdbf67f3f28090562792bd7fff45224041a5e7c72e50dd
Date: Sat, 10 Dec 2022 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670644287
