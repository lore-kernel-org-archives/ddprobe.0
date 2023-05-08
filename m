Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D1C168C5
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA031C433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683542885;
	bh=BFGnmgu5/wCFKiyKwCzxkaKYPLPSDyovB9ivB1BwdwE=;
	h=To:Subject:From:Date:From;
	b=BA/T3UryzePyn3nZqQr1h6WYZND1vN2uFD8BfMVd3iIjDv/jQgXsezwjJz8Go0EYI
	 0swCm7/QLE+8qlUJt+TPRKA14RQFlJF61KSBOll12bkSXMIKQ6g1t9DnNAQicD6Xlr
	 p2upglJfgQO4m6K/gjmCW6TG1XNAkXL3+zvOxx+Ync+65NTnjJqMYQGG0wZ/CZaoJ2
	 +vFqxT1xqc7zPuKPg+aDbfcFKSSB1yIUvt65azu0XcJgeshAO4qJRadpNIBYy52mYz
	 DdAJdjfqgqYx2m0t3rdNcuGb1ZfVIoOmR+0eNMtcGmgkG6QPOVo7INJf1uujyzImVX
	 1v9fBykXUiGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1E8AC77B7F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354288578.31060.4378139717729743187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15c550beabdb111040ee7dbf258042cbdf046cbff703c463c0ed0bc94f7d8b1
Date: Mon, 08 May 2023 10:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683542885
