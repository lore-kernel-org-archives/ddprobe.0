Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41822554A
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cW+qkhw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761B2C433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702291696;
	bh=niXCeGlrqRVziBtJxwbbHhp9uHiboQl1uNjvZqolLsA=;
	h=To:Subject:From:Date:From;
	b=cW+qkhw+vDeeNDLqQHOJ3KeVIjlCScUyoGJWCGF3SmJzbvjHwuIzAgFVhgZvr8lHN
	 DWE8pgCc09C1F+IRvde+ZuK9E+fndRkpFwATlPxLLxQL1hhb1vgj+Fra7EQ5ABQ55h
	 /b17Sd/x18LmY8u0SWOlLXNH08md+NYU6uLiPdOPi5ucr9j8MV+x7VghrbD8FoyFvo
	 5gpXLMCyaHNVSOU+CaJdfpLIMZUr1liiQJeiwo47IfI1DgtJBZ/wE0LuLsZ1Jkt3SK
	 S1f3UD85IJkk4Abn52UBINzCdq6Bg5vlPge+or8xblsVY9IGns3+ONi0RmirRAwf+Y
	 8jKCsV/97ezfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEF9C4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170229169636.1907.14414433152498511353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ca6fc7ddc3bfbac46c5415604d68e53e272314fe2ed82553aabea320745501
Date: Mon, 11 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702291696
