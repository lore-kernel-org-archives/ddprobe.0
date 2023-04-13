Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3D0361
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 00:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F06CCC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 00:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681346106;
	bh=hmmSKA9JKf3XzqNXmhyiYyqOBagnkqMxwEeDjxr5AEU=;
	h=To:Subject:From:Date:From;
	b=u/QJqMrZB/VFvlcW1ynqNz8lLh2tKzn+65ktFZBYiLJGQnJcsp4WMrC4ZQy1RBgo2
	 ZGn7PNJRFXFQce3eX7g4DJokpx3cECtxaLxquGvPXNIT7JMu6GLFZK7nJMVYVZmdPe
	 EJ+hCNFnGGO4hcnrlKCwg2zSnQ7i52em7DkpIG902Ol8pw2L/6NHV2TK7E7xYxAwVP
	 F3XuUjaQPFnJuFq+KA2isVi8lsdI3qGrEkNHBtyERz3AilNVTCPih5qfCKl5Q0l7QO
	 HV17npRQjvNawCsodmILKyf8dfhWObmvlgoUX/vHtnmZZ50aCRLcUmxutdDPJ5Y8l/
	 fqJyMR++ela7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5780C7619A
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 00:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168134610585.3795.9253838051456222470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2465f79f0d189116cd7bf307ced45ecbd12b912ec164719a1827a5fb2d5f909
Date: Thu, 13 Apr 2023 00:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681346105
