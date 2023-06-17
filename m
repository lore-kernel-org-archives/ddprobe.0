Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7320E10EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 23:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E62C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 23:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687044608;
	bh=je2TFlISm7QI6LcWznC1mJfESzc679lzRY8kJa43xdY=;
	h=To:Subject:From:Date:From;
	b=n+kLR2Dxd99sB+n1Z2Pev//fYxTH2D4phO77GCkrAkZsVyGxYgmDtdFfcjB+bNtjU
	 /L7sL2wfSGoj+M9i/hjk8VsJyXsAl4pBm9Cg8VpHIx9+idw32qMss0MWYxyG4vugzW
	 xVZ1WYuvrHIZkcl+B+W6UA04kd3eNXx4l6BPrOqnFLnMPr5Bcst7wYOO389TXsiqo4
	 f9rxqawDl+kSHgjYTLAsJWRoFRv7l0NZvkEHNLGE6sNZcWjVWRPv6QlyYhLIUVDOnk
	 wMNxleG1h0E0Ku7oOT3C6O3JWHJbqvtMVB82DdeIevgCHpDbWUBrbs/w3LQCkGxCYh
	 rRnH0cL1XyQyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FD2EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 23:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168704460871.32418.236590433063180307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214836165f8429bb43bbd4adc6e439a05f79ca2936e0d0ba5cbaea3a8777d79e
Date: Sat, 17 Jun 2023 23:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687044608
