Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FDC374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D5DC433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670380854;
	bh=rfyXHrEDrCOxXcnsDUEZvndSpoSYGZ8coYECX7RqZ2E=;
	h=To:Subject:From:Date:From;
	b=MnV0AAgif438viYpdIRkzJIGdQqONdhEdEqFRmp5utkb7M8glA0cIfncmElHKDQFl
	 O2UG/wnbmPYaEbsPiaf45K6c9TUrcAKueeebZIJbHpO8BR+ZvvlSSPqPkL7Tie5N+L
	 b1xDa9iekl21nM2FXiFCXu/l2UjLPMrliA1f/grpfM4XTEYUy0TSb2qhtGnXhm3x5l
	 Qrd5jroYiI3gvzPntZb4lgXwTBxV2wzoSyRheAtq5cB/MsUGYbSxBWd2BmF1j3xA6k
	 FbL6BiASTSFnBBcv5vziO/Amxh/P5lVP4LVvlL2TJYb7aa76SPoNT+rsvreT6Jx8GQ
	 UCv71WnwQIiCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53EBAC3A5A7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038085433.17670.3390677447433902015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c637a0f23ca02874227d82f4823caab65c835fe2e0af1e476a29ced6c3ce988
Date: Wed, 07 Dec 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670380854
