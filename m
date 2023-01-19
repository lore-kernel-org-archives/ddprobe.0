Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1604A950
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85098C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674152487;
	bh=51jDuLmDGRaI6fVscezyKKfKgtiIG26K9yeUIgentds=;
	h=To:Subject:From:Date:From;
	b=FELzTz3pfA0ld3Po8boLDFBeO5OT4bL9I1nBgDYIK3hdQNXBcqhf7VlSZcRs8EOdi
	 jE1TWwZZs1EkOGv1s+G+gxvjBB4lNNlLYKXJcnNIrWcuFK2hLPJViVPLN6dckoXzxu
	 KcXJdlBhXK09ippj7VukwnJ4QMY8tbIxTJHrN7NyQUfm4lYDO0a+dGu1ionJeoNmLW
	 WyowBvt6joijF423iDLAhYE2QmLOj1eT4Kp1B6PTYyTqyCwOmYm8Se5lEHBCLXfria
	 YzZFWLUrRkkXo0vJZ8BDC9CSsEtrmns+Svlr3/Qv052QN6DNkJejic7maHxcHngw+X
	 KcgUKtbSk9ExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F0DC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415248741.13414.4740480930309984103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9788510c2777add1692097193abb84c614dbbd6d1e7b8eb550fa44fb9eda91c0
Date: Thu, 19 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674152487
