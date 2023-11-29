Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B711C68D
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kWttHKkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8B9C433C8
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701259096;
	bh=d1k27r1EQK1Kz219MRnqo7iV0vNpBcGsQ/ww1i1rbQA=;
	h=To:Subject:From:Date:From;
	b=kWttHKkx1V73SZ1ri9zXP8ksIUg35l6EpYxmqx72dsvH9StGKyh3unbwqyqe1gMJh
	 ZVFV+/2LVSD4PytysnZb5I/AI2NiDcoRXsWldWCzHy4/1MM0VoLfxUWPLCq3wDUDPx
	 TEXA1yZIUhZUR7EBMeT1XqO054yzizukhMSantdTiMlzfb87ORHmjy9se5kRiff79R
	 YUFLAMBjxlV+UFFomm/3rrPfb3XLHIRHK7S/fWcNyJGXzzInj0zsds2lmuarDi8qR1
	 2QkYt/WDn4KsmuNOjqgyobqSpLnUHP3alDYafVXGWKEN7Yfe/W76eZzMHa288dNSPA
	 pch/fsM0QvIgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C961C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170125909637.6787.16127674882801276290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788f1cc2463f08e25ccc90e188e62219c93ef60c9f2d3797eebd0879d9f19065
Date: Wed, 29 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701259096
