Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108B545943
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLWlaj1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC0FC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704721096;
	bh=LqD9WTf/nfNIg4H5ISGWUbk145wdRhUU7efskJP2KhA=;
	h=To:Subject:From:Date:From;
	b=QLWlaj1S9nv6VdZO9cASiEbw4Tqn3M5K5s8chni7wifw3FN3mHcLIxtjCJoQKYoHL
	 xRdzun2QePEc1een6HObQrMU9DsQaCr1fDI6owHWU675RZGCjmb+uFzkOPR9rdvBIM
	 kyZfyq3Q+Eby59HgrPlWBVb6OSr+KHf7znyNXxyV5tcXJgGwMuk6a/kesjFhX1G8jd
	 SbJRYh+MRnsBEREzs4DlKBqp7BNSJxP+24n6OjKohfqG1alJMyWM0WySgXfPuJULmj
	 C/uh1hUiBgvCqxrffvDK5EmhZi7xcUsKvs20qz1cY8imZoXdLUFcFbpchd7V6476aZ
	 s/rymkWi2qxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD23C3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170472109638.14261.12039598584901601782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f18065a1f3a0d0c98a7d8790ab5c14a4340cfc0d9a5b241703f39c4d627583
Date: Mon, 08 Jan 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704721096
