Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB4E2116
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71C99C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664875853;
	bh=IpOTJBOnOjpkiJd1R6wZa3SDj/gDur4d76XHk1wXXjo=;
	h=To:Subject:From:Date:From;
	b=rXoE6cJ0EmJNu0HF0EWuv1eba24L8r9M8/IKlF+kd/6YLSPlAPx9081Cz7+CDaR81
	 olDvaxYF3mL8BsBLwBtsIVgcyN5sV9AQsIvDsVnLFrvU+imi3qpYjMGPhvNP1o2WNi
	 KXFW3NvgBt7X27WDHlKfCtZ0v32nRE27l0Rqx5XRqem9ADTWSOaDTxG63ktmUQ43xz
	 H7SbTQzEqhjGJBqcN2jLe5QxuF8Houyi0EmE4kq8mWGX1j8FiwTBFUJXojbdqFtCBG
	 Yt/SQ/CPiX9eRJL2v8rO6wmIIS1rbVWAV1s8r0jWG+Fs/yJsnYbm0T6t8xMDoRSMRH
	 Y4iC9sRERY98g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E38C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166487585334.18666.14972398323254151390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401c7848ee203bfc268ced484ffa34a3cb42a40dcc020e2f14c789d7ae2e15b4
Date: Tue, 04 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664875853
