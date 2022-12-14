Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D807F17CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82540C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670992887;
	bh=nZ0V+udpsmwe7bGsiyb3FhdYgRq+fUFP+N+Fv/sNVPI=;
	h=To:Subject:From:Date:From;
	b=U4p3PBX2JTECSD8Q+/xWAVV5Q5H1Ddk91xde1yAhndaqnQ+usk3iVyPAwnS9DE0rC
	 ABP+csV8i4ONjTbmQ/Ep4NuHGbDm91z6wyU7fwBc8HEBxkWeEIdlUApP8ylnHOT49J
	 OrlrmSJ8/L9kP+5yu7qNX+EC9e/8LI4GoTGHN4Zf+4BTad7GB9tu533bp8FrnfUQYP
	 pPvuFpyOCoySNVeKY1xua+dhqqArNS5lAhdVe9df1XG9aluWKhGAbGzJirYjUZGc5i
	 vc7uwQ0nQOE2QxVC9lkZVKeytOdX2BTJ/iw1qXsJ/HA6UlSV2jMSk7pqOtlNVRnzvH
	 CPgsf3jiQD9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C1BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099288741.21202.9801976865518735700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13e764aec8f10194d1696390bf335884ecc76cdf44206bbf1d4171954d4d3eaa
Date: Wed, 14 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670992887
