Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBD1823AD
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF4AC433D7
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663829453;
	bh=P5ffz3SQKdQmXhRMdXlCiFinj4Fro+CbxJAXY49t1f8=;
	h=To:Subject:From:Date:From;
	b=u5yDqTPhTyu2pCsrFG9uoRKoG48KA//sySQL2JrxmRdlpRsVu3j7D2UQG37N1prkf
	 zyKEwM3SiJgMT+Z7o1wKdvECeWnBXL1wkV5pb3D0uz80JDYaSzZXbAX+XOVyjLHhX5
	 gl4B3kU0y/SlwkX9AaZppK4vZCjr0LoSFSW/L9ECkZfuwQtIzdEtmFCnNWLeUgaRjs
	 kK7Cr0YCNalrK9LjTslhAD0CQI7F3XiMvNcMomCKI8xWY7pl1x0ptKQw8J/izjnZcB
	 PjYldWReKw9SUp07cFvF03K3b9dUhJ3sg4g0W143ERv1OYhkQqNR+V+Uy0A5dgqneZ
	 VHthvbRu7q7Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549F9C6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382945333.26673.3942079080674964409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c965841e0852913dffb68876b5e7ea62af81aa7568436eed84501fd1dfe1cc
Date: Thu, 22 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663829453
