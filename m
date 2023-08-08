Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F45B1379
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20F7C433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691477588;
	bh=W8p/XT3xkwvoKd1zOiOBSKgTEZ2VCkouErKVUs8Ms3Q=;
	h=To:Subject:From:Date:From;
	b=u4+V0ejet81yTkO4law213zmeyXo+QZPiOKhmhNSkwrXqfVd5CcN/EoEUrUFD+gFx
	 WERjrUHb86JHokUTNDyw3+hvTnT0PiqDVE2WJGzp5uPEcZBNEz7WnxMjXLQYr1PBaQ
	 eu5l/9oBNOmtmOXKSvOFfIUkWBgaYihHogjlnFGCbWJzBbkOg+em37begcDOCHZxa8
	 rrInFXh4kxkaJ8W/fUlKXJ7GYFEdlHbKlCJZ634PKkQCOSTkeZEG2vyNN2ZaxeGbci
	 VEhy+KbjOR5WlocC0fEmJOTplj767rNxkaLH0hdhYZ7uFMfHVUbPHpaDi/vO51q/Ef
	 UKIHwdicjBhMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D32C001B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147758871.7574.9347352426249019194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5854f00a6b02ee8c0592a9aec14ba762007d9d51dac7ce95707bc942dc92d5a
Date: Tue, 08 Aug 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691477588
