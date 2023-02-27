Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34410846F
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8579C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677528965;
	bh=c2cZoVED0/yfhcecDS1qL6QPKXR5EtpQS5VtT9Lc/fQ=;
	h=To:Subject:From:Date:From;
	b=N/jhvMhOmA461l8LogOfma6JAGbLL/RYWp/qbfl0/GBbO07Max86F+MVzim9IWgoQ
	 w8ugJJ6pBsylllAOAkB91joR4ghr2AbRQwMxulAtqHSEOoOMl+U2yNoTrAD/Pe5o69
	 m4pvBHj9yGeEVJ8Ojl1ctgnIUYWs+LycWTcF+xQ+uS3Hg/LDyXwaJ83pHxGqiQOb/V
	 MxARXsaXYbHYtFtvTGbStyU5BSsCTLGc5Oy7fjeaYJJpQFCsmUXqQkZMWnvJY7exz8
	 CJB2CeRxDQxucFiBGtY7jwvOgjeSMYQDzoDsVIouhc7u54TEtBOkwklzkHaEfiTOFy
	 0hzW/nORPhCog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A7DC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 20:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167752896574.10011.15632949018814020101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce117211c5cd6010c6a0743a304a0a5f0e39701b564716674ab1140628c5e66
Date: Mon, 27 Feb 2023 20:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677528965
