Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB7133D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 19:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B86C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 19:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667763654;
	bh=QYX89ZTvmBR8j6E49TnaHREtkbiuLm3P2TOoHFRnXrg=;
	h=To:Subject:From:Date:From;
	b=rcoN0FNq02ibNFQH92St7K/T4K5ojAWrelTpGNX4FtAlTAGpkjch3Zl4NUleuA3pu
	 P2Jups6UEAS+AEBwPA3AkUyo3s3LA+0T+xwYPe7BuyuxMeAzCUHFVE8DmxtUnpQ6JA
	 0GkKlXv1P6Nlm7zRask4rCM3U+fO0W7+E08Y1r/4GvxcXR8g0mUp762Bis6PvQfgcK
	 sUQNVvEVdC8yeHChpsphtQX0/YNHd5kwaY+VjGRQBqDkVnEKSO/MGnhBM3/Po2qzul
	 QKm62ZcBlranV7XI8QL7d58KPmS4ULhuXozrne6IfGW0/WcCpMRtyX1rbshM7hWqt4
	 OZzmgclT7LS+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523A4C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 19:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166776365432.1634.4989214240363565289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3545629220044675a8f440f03f474fc24f465d9ebbe032445c152b0d6e3a65e2
Date: Sun, 06 Nov 2022 19:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667763654
