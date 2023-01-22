Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E7215AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 13:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF60C4339B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 13:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674394925;
	bh=xAzgoQCXRLCL6f6O7aMEff72lbM91VrxnXsNanU9cQg=;
	h=To:Subject:From:Date:From;
	b=k8SHkpXJEAMvJQx0MTiJA6BYjLCV0s2awYfm/y2orp5nKD3QkBpstI9W3Bwez6JJc
	 VdE/Y+AOfg0LlSBQyTs0RLXfXdcb3fZiABbcS9TxA87/8aJbFj8OwIK5qMDQSXXQ3l
	 Bd9lU7VAPyx7QNOg1iDb4pTagNyO3YNp1ETsbDU10kTSstcCah0qkFCmF0qU2ffG2A
	 XO4+Z0MBX8G2nROUj9g0O1rKy96FMTurXRTJRrjrhtvjh09nM7dpClzj9w/aNnaY5p
	 hT3WYYiQPAVI+37kedE7NnOKpL90hay4dvnOg9XoobLq+Xm1Of/IrJzgbuaAA93g+o
	 RaksCXqVLz5JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2EBDC27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 13:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167439492572.11603.11332296619701197901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd80de826b55334ededce4463883d050198daa5e538566585c7468d0494899c2
Date: Sun, 22 Jan 2023 13:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674394925
