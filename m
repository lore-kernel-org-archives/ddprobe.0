Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B022F47
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E504DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674923585;
	bh=8vYsdZZq9NfbBLP0g028gecRUWOGU27NBErDpcelgak=;
	h=To:Subject:From:Date:From;
	b=q8IxscgxarS9x/SaMXdeeSPRgSFMm5MgXlDxiFFvhEkm6H2Q9NDIGaYICxnKOLGkM
	 LWosA1vDiV44qV6VpFEZgoFM09K5QeGFRgcj664I7OrT6lSnStGPw+s8+QuTlXyxFH
	 +fWP2MAonT843sYH7WLtedIH12mDUHkoyqbqDEpcW2wH9dE+QjjslZb4/oMCb1rMoD
	 o57qEiPqNAuT0vrWMu1xM3Ky9r9OtMav+7NLEMowDEjdDE0lFogQdoySyFZl1aYMkW
	 ON+G8/F26SYPOSDXqvXGUrB4NIw8QQLnx9W+rjVBZQKM6wLLaGeDaQvSw/oIPzhrTy
	 PAs3B7ZHE0HCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAD81C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 16:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492358581.19405.9620345314696918697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9b9be3ca9f76341debc4a9d028e524d2b03d175e75ff642c91f9a55b5a0ad1
Date: Sat, 28 Jan 2023 16:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674923585
