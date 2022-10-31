Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB88317CC1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 662F0C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667194854;
	bh=44bPWq8ddjfD/c5R2RcN1duYsIHbpPEnMeU/nhW2F0Y=;
	h=To:Subject:From:Date:From;
	b=AZ6HFZd1ziMjPrK9trhmqQ9C+W/38rKei9kR+bWYrcEUzj12SHpXgnfdDjr/sQHEl
	 vf1N2m3E7wbTsp3/ZH4BCz706ok7WBCTOsYMeEZXnuDUUDPONs6lL1NjG3Xy0YRz+9
	 s+fd7LbM7M8UFom4TE5A9sPaiMRzbjQyn/W2NG1l9PBxJCsnWrK6b4iP2zUb9xEuNh
	 E5fLHYDMKX+WSAeUqEicfE0vnFd6O2Fbl5pT7GHOJUTXbN37H4JzV427HffDmQ92Bh
	 VO1om0SRToEAtTnTepAciqoCvf0vNUyGH1FqscHPRS+30O2J5fsVEtSQECDSMfLlSH
	 0qkDRyOsEbdOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511C7FA3741
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166719485432.1224.15412932270829424283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5bcdc53a7f8f31612167570e8e9afeee37489566cd8e0e5fa891f0de1e16ca3
Date: Mon, 31 Oct 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667194854
