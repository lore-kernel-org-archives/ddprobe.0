Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C136F28F4
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BE1C433D6
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667981454;
	bh=zj90XjOyORKvgMNh7JG+vfXm9eq4FEqajbceyLaDL68=;
	h=To:Subject:From:Date:From;
	b=e18lBhfDy1neFH51bXtXZ/RpVOcJEHUik9wNrBqPqvZnN8YRZ4SB7jRyWmgNNJPt3
	 U1o4LRSgzJ9vZ+a2LFHfYziCM36fyujGa9Kbdl4edC4geMT0//qaeV5d5GzXcVkws2
	 mHFHNuNUkzCtAtgzA8ymUAWtoeSzMv74b1Cl9CrAuHfO+8I9NslerMFgJ5JxvvuF9A
	 gcaLK98bNQG++K3RhruSGRBT0o20J8aCnZr705z9HWjZuJ4cUxnXaiB4yQNo4e6cOW
	 qKxINzd5Cdcy+9Fc5N5IZ2ORqSYfb4wuYYoBFMHYDmemdUOTKRRQw20FBaxYpFmhK1
	 Xs6xo72n3acfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A5EC433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798145435.30322.13147266700020757557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4fb851afcdd19bbf6e6e10e0324e533065c694b2cd83fdd987c1fb75edcf71
Date: Wed, 09 Nov 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667981454
