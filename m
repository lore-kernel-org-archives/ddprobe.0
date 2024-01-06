Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA401FAB
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixyUz/LF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C3D2C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704518296;
	bh=P0G2jn8879jMbA5qyeyZFLR1xK//tmo1lRGK2MezJKg=;
	h=To:Subject:From:Date:From;
	b=ixyUz/LFQ3ebfPBwa+3TQytOujvEPRmJrWaq5dQV/CqAuKMSHQh1Lw+UvCB2/vvsG
	 8axX87V8Cd3dT5PtkC3YpF8gMShRzI8ORMkx0rZWKzQvgFI4aBaD8cz+s7SI5fk0dz
	 VclneSGAoksQ8pw150n2mCqxv2a/KajLfinPPdzAOG1atPK1fj1BjF1nTssr4xqlVy
	 1ZzNQUNXB2gMKWM4QTi77entWSL3txtoBubNMGDharEoPPC0nRufX81QHwTpQq3bt1
	 lln9TDaaw4bTC5QDp+pUxXxCdnW8VWC8JCRvNBTVM3Ojay84iLc3RZCheAXiDpQoGV
	 us96pj3TQnI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F2C8C47074
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 05:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170451829642.29515.3007048168289280724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13d8f74eecb88d1e8f76740ce8e173272291bd019967d59c14b0e68e23585984
Date: Sat, 06 Jan 2024 05:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704518296
