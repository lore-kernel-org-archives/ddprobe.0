Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5501F95A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5rNSUBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801E1C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704353896;
	bh=EfsD3OJQB2vF47F33MH9eDlTxLY8+f0Aa5XgmevTboY=;
	h=To:Subject:From:Date:From;
	b=U5rNSUBcgtiDeSyI4i2As2lFQFfItiatqw7X7JscZ5t50bd9knyA8jtmUeInjONgM
	 tRtTjSRX0gNyTFPuqTj/YD7PhT5uftAm9WILHpIPpLVEyayrFWNwZup6Q5lp3J1vSc
	 crZGKFd2sHRczlO6x+1NYVS3hqQDNCSQ1exacFMQHd5feEXeOvOm2xspZ9DTqGCK44
	 AVKsr/YHnYUG1sNLoovYIwlnlBWRLnXanswKaVSVWTND+w/uojeH8bfif8lglWpyFD
	 8d8/sKlW57GVbNjjwRiXv++jb1NqZLRZOBVm+QrhjGby8V8BCDA3mP7wihX5NYIYyo
	 qEbXeyt/OoSTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F20C47073
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170435389639.8549.16402608706724782923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ce117b54348aed2ccb7129f466ea09770f3e0b7b817783efba119c17d90db2
Date: Thu, 04 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704353896
