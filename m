Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F102914
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C80A1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689499868;
	bh=TPkaD6JpVgT6VT+s9beAsraFL2lcLd5yUAiINBHeI9I=;
	h=To:Subject:From:Date:From;
	b=NBIsIFtCNXTN11LAp0/fxXdJb99qqSDXxKYYk3c3hKNW6gnCbL2BrD81NHSUWAwUm
	 nsTCF9yPrE/xkZUrdPMpB1/jZEUJ7E2bUruHWJ93OaRgDGbP/2lMl6uI5t/TehDTiP
	 y7iEetP5bXHCCX0wLLyuTTjn7mw4s0FTLMTKy+mG6w8hpgLUya3g1RWcP0LNqU5UUH
	 2aXFktvbW4txfjaI+Z8tnlcYHA/EOFfKRy1v8xL6UWgSx+fvR62+C2CjoeI0+yZtXF
	 8D4WBkq1TF7/RDp0QhVu1jNP1wCQM2vheZyYR6JbEv2PRndepzjaU0wKjizQp/4OfN
	 tVEyRyEoj5Jmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF477EB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 09:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168949986871.4405.1874024483878882826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a9395a32fa3b65dd0b0025b2a93dd263d0876639a58eace2ddafd454c58b44
Date: Sun, 16 Jul 2023 09:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689499868
