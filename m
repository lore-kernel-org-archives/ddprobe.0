Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 920F47F
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02E1EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692678249;
	bh=eGnQwfqMFJU/GV9Tu/36j1ZwuPQ9giNMvEDn8E+ghnU=;
	h=To:Subject:From:Date:From;
	b=Jbz/QBbmtuz2t0eX6wkGsem/9Z9o2hS5gvA8VZb9EUqYyfcQ6SB6o/ycSNCQsgFLC
	 VAigx+7Zez+A2RpJ+9WwAatI+WB6VOIXeuWzeCnQBI7j3RasskxyJxRUU3cHwvSPju
	 b08pa3Oi1qBMhUXOCM2NFeia0UZ8kl0A318+M63pysmjV2WsK/HhEi1d4SrIc5yVvt
	 9gZh+khkyMqAQMGc4AXrOfRJRh5+GRPvPIo/KbB4Fj/Nfgs26qL4CztOmDvrVBmG4r
	 od2DFaLRGO3hYyafCw4nKdJcOBnYQ1hxKCpDW/aDLC5A1Wh8fzb99vMMHaswNKAK4z
	 X0bbGo+83bIgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFADDEE49A3
	for <ddprobe@lists.linux.dev>; Tue, 22 Aug 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169267824881.6732.3481971994223697935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ea60830c41180ba2fa236a03fecd56a355e5c38a1d2ed0d836a1b3303654a0
Date: Tue, 22 Aug 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692678248
