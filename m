Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6860415AC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 05:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF47C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 05:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686288905;
	bh=gt7lbJCld1gZMn7PSetxi3VNjvJ9QAXu+PVP7EwUFKw=;
	h=To:Subject:From:Date:From;
	b=dt6w+MPM68YtXP6SLqyWO1Ru19DQ6CIxM3bQDbGUY04ISy6jcrDlmX6u0WRtroweC
	 Yp2ndybnz+5uZQ34wxoikcVSEVGRZ520PAQh9rytcsZgFRJRErELeffk3oVgNab2Gd
	 eyIlt32WslSuya6a99wJdn8ir3k4aRfCMpHqFzxvznLu23C9+eHqd5MSAJTHGR0ARF
	 KbnkjFV+l83WYv8dZ6xlbWqpUCB/Kle3MyA76RmU0wMk80eawoL39v1pjgIuKSQJgo
	 Izzk3fNYXxGqu7CrEbezDOdQow+ns/T57PhSF3M/WVjxkOFl3uuJb6AMY/xn7dXtv6
	 2R1VXm8g0MeKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA58C7EE2E
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 05:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168628890576.627.16970592230025931025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0592e92582d0cefa02d9424f7a6f8c9da8c15af861c64e0b4e1a0f7c6334d95e
Date: Fri, 09 Jun 2023 05:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686288905
