Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39798848B
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E416EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685113505;
	bh=TU8YQpKPu8KEpCB6jbIjmbUeHJxcrfQJuUzQOQBZHIc=;
	h=To:Subject:From:Date:From;
	b=GTvKAvENqdCjtyGqEiVyVDLEJofmb0h6f2qgNoUEaLznncym+4O+XHk9t3xcywtnR
	 wfsyaBe4QIO+A1EiPPjdG2Mfb04dcJfa3evLUMoCpTbeuAXZldOd7bxFXDQemk7IRP
	 C5jBOnwXVH3Q7jNLpm+vLqZOSUD74DOywACDtAHZiYH540nCBAzLMw+QncAgLjSvWm
	 qlkAU8reUCAQDqStqCs3o7uXZL07XbwxDGTU4d5XRfa+DPqqdTW5W9zoqc+MrjQE0x
	 fiOWar9F8CIcuziaB1wQ+I7qoT1AhavnyO/3PLRRK28C/RtsjzX88Ezi7YEKZ249JC
	 KQ1M1BqkHXZ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C26C7EE23
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 15:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168511350578.28776.9276331924045753368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f7114090ba916bfb7f4150cdd57e2eb90793d4898fe368e9e04ffa9905c31e
Date: Fri, 26 May 2023 15:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685113505
