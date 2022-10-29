Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01742F27
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CC01C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667063454;
	bh=6IMl5ipSqZT7OVEoD1L806Kd++iUTuqoXu+VUF7Z5V8=;
	h=To:Subject:From:Date:From;
	b=aIrlrb9WtNdroQWrOd+7YgIiSsFPnUekoYnScdoMyWSK3KwwQuO8wKX6nJdryLJZ2
	 J/BArnK02Ys9c6HgjQSf1WaLSOyMQBup+kKKMs8umpzskLPVmOSCXvOR6lpDgv0JWS
	 h96hVeDIHqQqVxCYZRh8OiUEdJI4ZPov2+5ir0mzqbtJP/nar1rUB2yRsGsfkIoRri
	 byo8HBD2sg5jRWlBcBC4Cj74IVyYX40gKmq4JN1NvP6o98a40n0H4cS3WJgjnwxgVP
	 1JHt73QGjxtNqxxEYjY9gn6K7iRyoMyD0qTy0LbKIvZwKiYytRz95ia6XfxuHufonm
	 Z4zSMS3dVmbeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71DE3C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706345445.28678.3253286936395641228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1123f06443d02515f792d0d9d2afbe5a443227f043c72141fadcbd7802f83dd
Date: Sat, 29 Oct 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667063454
