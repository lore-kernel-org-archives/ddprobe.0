Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28B9370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 631B4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665707453;
	bh=ZuEKtt/gqYCmbJ9YxlbWNogr14nlfSIPaGE6iZuMY14=;
	h=To:Subject:From:Date:From;
	b=eSd0FitYzqNcyIpcmPfrk51UWPWVthpGpVSslTnFCYot1i/bEom6YKxdzt9RXSEw3
	 ow6tMXQhbBKoFvB01tfMEwqUvNbwEq0aWSEAwhI0CXeCMcQQF9UR11OWXxmTtzVvEz
	 x5/Ks/MZGenOOKrggYAGsTHd+ih0kwxBEdW2VwKWqGJ0PufeCPUUV+w2OQUIbumG9f
	 QP5HWfF7JUN0V1lB6yMhzQ0MYvTYp1uM2BKBcDA0RQpRNKPbZlvFPKK28ci49WbgyK
	 wGkneQNQvx8/YhM/86ffvKc99ZmhoVrpfecREuHhYJZjCGXHSHLiAbVXLa08e/jenx
	 ylbn570d93UQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E872C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 00:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166570745331.26567.2522286187923637063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287901b7f7a695affbfc696ed3ff5a68865ea8fa92c0f5b71a4a9ecf5390342e
Date: Fri, 14 Oct 2022 00:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665707453
