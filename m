Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B912F34
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78C42C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664978453;
	bh=xM+Ucx/xEfS/xYBQ62ZQ8BRwbf/TBUZfwiIfOnDPyrs=;
	h=To:Subject:From:Date:From;
	b=pcDQpprza2kbFHEeXUEdQr9i4DA876C7ykS2IF/o+lnKzg/8JT0ykjxGWFlnc8+Gy
	 O7IEusx0NmvraCPiqoMxcy1JE3yilh+Qq+xYtwXoCMTKoJOr6zt2Apb2w9ioWPUoX6
	 yKGJQJITnCHQ4H23GCoMDFubyncgdkqEmbo1yvjZwbs1COh5GitSnYzAhrEA6zChWD
	 ZEKKnnZHCUv8YWlHL9qqAfwvQyp7nlP9hStD0bGr6ZT0g/BXYGIoKbXMrG2tfXOWra
	 gpIwtDaOdjS99vPbaqILmCYekgwiv6DDMUAhfgwOSZfQ6Q+36tptBmBNIibke+BBCk
	 e/P184AOaSJtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57144C433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 14:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166497845332.5251.15202066894784353222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2939937ee8c013c312c3237f9f2152d66d92a0d7a8c99a12af2db2edeaed085
Date: Wed, 05 Oct 2022 14:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664978453
