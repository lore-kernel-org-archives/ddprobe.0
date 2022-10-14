Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDCE07B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE44C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665733253;
	bh=be3WLTifeZcLKrlCS+p0OCWDQHhFqQVsxf2n9bJL+3Q=;
	h=To:Subject:From:Date:From;
	b=Ue3l37oh4Z4umAVzaVwgvSWSLHwmfrBt4AcDiEFSu7z6aPTkC05K5s+7typbmLm+R
	 6fLXmw4MaCqhaH7MHna6mroF5QdOUT8iZGZQyUloDKTQ89xR3DPRo7ZMtpr20T9SmW
	 6OgWgNNZ3M3Dcuj3UqfaBVht4FhrFzL2SdlD0nxDc3lDJ2B20fxobTLeF43FWQCN5N
	 5ORAHcHRrzKImKf8ePpXJhMeFnDvpKYMidd6Z+oYJ1eCC8YRR+Es+m7HkvnSFq2ZBg
	 JP/GBcOi0DE9c8MSGzfkiE3X1MuUTsii146yEnzEFId1QrMMK7Nm9svnUDhuDt02ok
	 2juRWUuMKm0DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53335C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573325333.27287.15865773116763219155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302211b59e0f7b8de0ae80c03632d859f62dc2433892427536f39bcce66059fe
Date: Fri, 14 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665733253
