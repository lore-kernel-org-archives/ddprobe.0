Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F1645BE6
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtUxnRQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F3A9C433C9
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 12:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701346096;
	bh=cofengTROeG4ApI5kxFidMCGJ9fxQSW1HcJ65z1eyrE=;
	h=To:Subject:From:Date:From;
	b=XtUxnRQ0BowWUAxkQYg0EaGQZGkKy+YmG+XD6bvUQY98WLkoC0bhXuobsqDqSjmqQ
	 nPJCHExeC31hUE4zjo8aFHYRtYrDX5UfzYP9f35TbqGSIrjIQ6mVL/dbOC9Bym9qiT
	 OdhDJAPImaLzT9Ejphkveronj+2+6N5V5eZ1B2fdXk9Uu8fnRYOTm7YobCsQax9map
	 uYNTGVjLN0fXLSc+NKEu61BBlaJSRt5ic0DQfWNCOEHTbgYdrrI6XKgwXJGPNyeYUd
	 Ae4sAVam1Hynpvwia9/pZKZAkX1wZ/lzVlg61s6uiEINPLwq3bntQwUhpQWnqf+Fh3
	 RFD+xAGi2iVVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 655BAC10DC1
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 12:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170134609640.16827.13891248278247219939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 122ae4fd4686ecd031f321934d1ae06501c15f3030b6386d509dedf11d4ed7f3
Date: Thu, 30 Nov 2023 12:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701346096
