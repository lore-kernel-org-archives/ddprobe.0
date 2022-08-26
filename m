Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B986F33E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F4FDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661514052;
	bh=ydMfZu0W4ThrmU25dEs5+GqLfiI/xhr2FbbPAmBfH+I=;
	h=To:Subject:From:Date:From;
	b=UMHdyfpA/fAWyY3Yoq+t83lT5yXpEy6SXvO83rR02kSSlqfVSdS+IGYxyha5j1XaP
	 E6YaxaaP93NHCUO9ruiESF4X8hBr8gYLwfg2Jwca06gZntSd9YMgoxUxX54N7RQN5D
	 YiLk3rh7sBMt/omcYPFWsZkEpvHBUMfvXB7MQGJ6tnIy/YPC9yfYgjfs8YBqwYa5fE
	 3j/lG/iHBtds8gajQB/cFK11MgaqBjr+l2CxRPugZje0Bb5bgAvlwhHnnqcJColRc4
	 B/ixPeopjWTglk8X7ZjoJydPBLzOI57Lv9lTdzMLfG8ZqvZBdSqwRoOgYuduIxfvBa
	 OofLI8Npwbv6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58288ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 11:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151405233.31844.7373927331714253197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9020d747db5a8ce0aa30fb6ec6f97d86721ad8604933c48cbf123046db7c0c71
Date: Fri, 26 Aug 2022 11:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661514052
