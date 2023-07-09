Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FC6E79E0
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E718AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688929028;
	bh=9buBy3cyQh+bfM4pZMu7lT7VwdTqPCPLD6bMUps3KjI=;
	h=To:Subject:From:Date:From;
	b=G1Oo65ljSvASQfo2uXnTUIGBaDW9Ot+s3BZY60n6T9Zhol8ylqNeRn18Dxwoyzpd/
	 xLaYOyr5/rJeYpKFwARDk4tV+ZiSVca9vYAb58xfk5Nx4+1jLed2kEadRVf6UH0OJ0
	 XlAtzJzZjpc6xUwV3FqEv18tunuYjHDzjGPfxvBceWv7XW0zu8VKt9kvF90Fl0FHCj
	 YovsWXgog1+adJLHoS4y6D5rSasRFVvihA7nNLoRl0vGu7qpgXWckoIEgSJIbytZ1M
	 5wJdwK8um/OOWvzUbnrLDfglEiCVUnTZJTvp2UxerBGqc0LlND0E09uX4G5jco3wg1
	 XkKwb3qVOJSmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B895DEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 18:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168892902869.31241.13211654039303471595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6848bc13a6e95a4da7efad23cc009e568dfa73725a3c06e082a8e2a8b6ce78d0
Date: Sun, 09 Jul 2023 18:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688929028
