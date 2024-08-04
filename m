Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD06A95B
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722784554; cv=none; b=ajeszvpvVIuYfXGSKXhcYxvpH67kg9nFd44Czj8y349DYsrwrccRPeh6kd+BjNGJp10pkvf6O2d96grljSjvk0ra2yXj5JN17Rkv6Y/jBwYy1cV/GP8Ewltt7fRCz1H+DhjHJz07uCULiMk4oOpfkIgDgJ3cJissNwvT8bm1QtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722784554; c=relaxed/simple;
	bh=RdYTBGn0LCKL/qKMv4gtLXaVY4EAiqEPNCr+CwaEJxw=;
	h=To:Subject:From:Message-Id:Date; b=mJa7lzPsXqiHSGe4L0XEU7AypFa4NmNOfP9NAaOsZ8oGFThnIfh0SAdqYxlpPwbq3+k/PjWCgeyNqCPtvRVZ02+31yjGAuWMKsv22tvav8TNFQndGLkv8rW7pSgNNpwOvZpgrzrendE6eoKqj3XVtmhVqI8il42wvlL4FVOS508=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3lc/g4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3lc/g4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46EBC32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722784553;
	bh=RdYTBGn0LCKL/qKMv4gtLXaVY4EAiqEPNCr+CwaEJxw=;
	h=To:Subject:From:Date:From;
	b=P3lc/g4NVB4kMMxUJYy/DfsVQ5vfPxK7QOnzMRx6BxCO8f1XqSuLbEb6f5U75/gaE
	 KcK7/xkxb0c+NnoAYQaZ0Cz3fshosKwBLn7ZcSmVUc5JQqgGYMvOPMJhQunhnf1vJT
	 6+NNWbfTqIzToFnJZ6rGbmVQ12GOF5o6vlfmbk/W5VurfrTJ6yVgoYOajrPGnRlsXE
	 WsuR8r1xTWqmoUpV2uxKT1vHA+zuOYU6Epg8IfRsx0Smiislzt5wuiUdqowTTQD0Pe
	 1Df98ZthZDMAdfkOoPUZXrwdsBgq7K7PR+EiTN6uVWxKBEIFTw/cwPxIlcdM7hB2zC
	 jiC2S2LVAyi6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9928BC3DA7F
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172278455358.1436.17556862611044805474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed98f0e2c9d85cd7f24f9732b37ae8f281328c849a621751c854bbed9ad0aedd
Date: Sun, 04 Aug 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722784553
