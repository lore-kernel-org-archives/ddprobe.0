Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2862584
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EE7C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667691654;
	bh=RB+bVaMJBkSUzM/Ev9htruNDoEnLZeOGN7R2MDhc9RI=;
	h=To:Subject:From:Date:From;
	b=KuT39yYXPdsoDonfrLZyu74RYTq7kr1xNGgfAFv4cNYSoq8J8QIs03Yx0xYFY0YnT
	 RQZXTbl25xUQ/SQQB2OCSevzFxhFjeSYs3wFFojKt5M4Jezyl6mIeChnHu53RaBuV9
	 3KjJ1AxwiWV0gfG604poAKzcx2TSuhhlqUOq1BP4oS+SNTyEN7Ak/+UvYyRdUsVqCA
	 kf2NWTQqvyb4nw8OuH+oly9F7fAHQnrZlEIo1/h8j7ROSb8PRCVT9ylHaSRcdZO1rw
	 u5HsQN8PWinp3vZSkSPpmG9N9XYosWxrxHRBqWLfB/FcD9aQ/7Hw6ph9a5FgCQeq1I
	 nNFMhkDa7SrBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55492C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166769165433.12580.16208796990034701280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c65c8ea45c0b8574c0effaa28f343cea1ad49486ff4a1d29e4e97acaa548f1
Date: Sat, 05 Nov 2022 23:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667691654
