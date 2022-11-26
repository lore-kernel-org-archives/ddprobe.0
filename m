Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A0B193
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D796C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669467654;
	bh=4bPJWR6BJErZXevcvdMfdqFjsNM6QHzM28WMYBhGMkY=;
	h=To:Subject:From:Date:From;
	b=umjB3lSv74og9xKQRXQNOOPbCikLjRZDd1vRvy7WNMpTQmmWMb21qgFgEkmNTE938
	 U6cJLTsvhszDxXwC6QciP2WjAZk+NlBxG8vbkE/ShXQXOpNrFUzQE0nOOv3pgN5+tg
	 qEVvK0F3vtU1Reh1z59TErySoE6EOJ+waPMcP6+GEIfgT95MDllLZWu8kDDtTszZ6T
	 EOSTNnObJf1+/gJsXkvrUKXmwCo7KUJB5rMHwn/UPB8zNOSlQ0i/SAwi8eTtbrMrIU
	 cJ4LYhR2tpA4EU8oTZoi1ev8tFfMKrdE4v0DHDaV005qdoX4kLgrZETDsVjetc1f5i
	 eDxkeHu7r0LSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DACDC43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166946765436.18729.11619754782753701956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7942de881e721ab20e76d6647f977671cf24c60df98d2c4bd677952fe446c16
Date: Sat, 26 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669467654
