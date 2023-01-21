Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB5F643
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00787C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674294126;
	bh=089rJM3jZiFhfBqPlbfb6SOnxxoqWl7n25R2Ij1hoAI=;
	h=To:Subject:From:Date:From;
	b=m9w6rrgAFl6jO087n8bXm/+o0RhJoIW3Hw5fotySOuFzdR+GSi7wTjMtkN+vb27AT
	 drPyrqVZmZ3RRzmKbc44ZAVineQs7IaeXnPbI5Y14GOPTWI1JpP6VuN3TM0qytOG4S
	 P6NTRtMExw+YtmTbiwQUPG+a+CFJx1LbC5SNTii8iLVrWT20ZZ+PI35s4HXj0FOB44
	 Cg+W+xx6ulR0G0aOdcAQXLQdThzTzZ/JSpE2CNR/R7wU6rw5Dz2kAhyVhR6Q/U/MIP
	 XYz7NxXI/KA2uUffBgiNyqTDYsNFQg13BHg6icJIPTf20CuQOd8EwkRXinEj6Ogd29
	 eMsptzr/CI7Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BF6C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 09:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429412579.23017.11648489678324400341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdea4f297f73ac670c301679d302da5012b148bc6d18d150c61220477598173f
Date: Sat, 21 Jan 2023 09:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674294125
