Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ED52570
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 07:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CE8C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 07:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675667765;
	bh=voEn37qPaabXbPmpvsMevjKhOvBAwAhL+XgoAePS8HI=;
	h=To:Subject:From:Date:From;
	b=HYuORJQC5uoE9EWIVKuCK6KhtN7oWiKujqMCu6s/4zA7LwAVeyi56VpuWcmsfKwmR
	 I9GEKvavkcQmX2LGjYHes7sfiQOaVUzNLw54z2GpQj/Qul74krVmHAPdOIWJ/bKC/+
	 ZmH8/+WitcFsmoKjKgMkayVqzqEqlHrbdTdxSymDsuNrxwQCpW29kf0nx9kJPKgPID
	 xzMOw4F5c9AiskOc8UchJPlOEmcgodaAmI+oZTdPaTWlHMsOxlgi3KH6zZlUrXr+TC
	 Pw3Zk2k8t0+Gtq3Ng/JCFaI0yg4mhJejT2QxAZ1SOCrFdG5RWAtlrhRXA4VMFMq3YY
	 zYQ3MgKz2ultw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18ADC05027
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 07:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167566776572.30004.5108133708550171732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f647c9ff491e14b0cf0bd2381c9fba54e88f7306d4268da0352f9aa9f79d6cbf
Date: Mon, 06 Feb 2023 07:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675667765
