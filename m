Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5156112
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718FDC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665525653;
	bh=daoaUYFGbCL+6z5Pmd7kq5P7nWr89nNvJXzYbLNvqBg=;
	h=To:Subject:From:Date:From;
	b=f3Fqf1z3wH0yL6Y6OsPlT7qeB+Bf90ASUVInAB3QLnkKwfkqeJIjxj/9tmA+HNyGt
	 ZEr9qFcNcrbxjYFPkij6VpSSj9o2hVqE4iiJymtZEQQJpD4fVYQudqpEr3MyD2txVx
	 JqB+UsZiNBvWhmrSq6LmbaGUX6yo49Lr7beYVf6A+uzzvblgYUm4f9BSEH8/cDjA1F
	 fVtnFOm7gWx+/bq/xR4OZw/Zy6nMaKzcm63wPGD8B42Iry7lSvHXD7p0lFdD4OmluD
	 M/wlnwGVYotc4zRtS0T01FHdJC7sCRpKQfjbOjW7gzuyHeQ1Y4lLGnoLLueohHTcQ4
	 jL7oVucmQQRcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A92C4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166552565333.7239.16936454467417693023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bcb5f5f5edfd8855e19e3d751e2f2faa9ad4ec87f6250b5b66582ab5eacdab3
Date: Tue, 11 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665525653
