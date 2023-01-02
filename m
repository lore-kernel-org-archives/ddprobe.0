Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CC317F8
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1C1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672639287;
	bh=yTtUX4+M5Ou8d6UWwzkPuPxYhfm8qc7vfFYZvBZovTk=;
	h=To:Subject:From:Date:From;
	b=Z9NMGVGP+Yn+W7cyq1rl6NmAcIObA6qveAvUmVBEypKyVCNAKDjDhAy1YqzIC4c+f
	 CtarLlXlM17mNnxkBKOZE6BkE+hHwwZ5oT7zym/oQl8Vv3kiPeJYPt24NAWxwmX5qZ
	 kpip6OUeytusCuUDCCG/Tp5VBA7AfLDwRjIRHBRz8KWxHcJoQeCwfNVwEnQ6BWHDe1
	 oaHbXnHeit+0ch2bbUF/njbBmacnjwkHJfR/P+jpXGS+tGxeq2KVI3i3iEEGjIEGDM
	 vdzJXNrrGj51Ffh3ohMZzMy8U1hA8PV8kOhK3G3b9DPd1YuRzcdGM4iRr3fLL595oY
	 LGZUruRNmBZYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76401C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263928747.9378.8918894077200985265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb576b2f68abef520673a197b5f6c2333d781da09645e166549057b528f08e85
Date: Mon, 02 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672639287
