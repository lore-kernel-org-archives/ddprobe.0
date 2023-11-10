Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2291D539
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m450H2e1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 943D2C433C9
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699638496;
	bh=hI1tV9YNbhKVR/p22sai62MvoJeiLii1qT3EYdfwIyo=;
	h=To:Subject:From:Date:From;
	b=m450H2e1RnQHvPQGp7wrArwkz7iRZf0+dh8VoFVP6GhdCTsWYXt9shdg+6TNbdEIR
	 Pzp7KsZ//Qdq5IIEf4shWuSlf3R247eAgQIF7r4izRiiqNAU/oy51Kf/vgukCeQUp0
	 4EBygVo34Q2PBaRadcfigRLyAUrUTZKv1pWNxV+/YHv0ng1/zH3uZ6itxY1JAB+g+E
	 q2+eDtiYcl/TLpk9iliOPmDNWXNP4h8ji5cGMQXpXFyRzj6IMQV1Zjlrkp6ZvSlejK
	 Jbmeeo/d9VlXtpkmzlyRza0am7cxPEujZYdCjFHOrnGpeD2kQG9w+wopmFmS5H12yw
	 W8zDJVgeqaRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 733A9C4167D
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169963849646.4080.11887013590281038282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c53d9967c1983048275189518cac6d6d43a5b2d08405570c6e28fda946324b
Date: Fri, 10 Nov 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699638496
