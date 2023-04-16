Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677C010FA
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07728C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681679826;
	bh=sGRCwEZmicikYghuQZS+VJcU9NamaZ/HzXmAT/kpZDs=;
	h=To:Subject:From:Date:From;
	b=Q/Mg3olMV5nK3tv4qpcSeZKwK5PdQIxpYaDByQcWx8V2N89AsuVvHF3yWOEOZO1+9
	 SplqOPxDX4y0FYbVR/a5f/yDY6LVSez+5GHVa2L/S4Y4m7bfcPfLPbzIqfw8ogXIch
	 KSYcSf8mqvH0GTEjCPIPgjYUU56EB8xW922jrhB1ADsyZviPiaXobph7ehmYpprT82
	 9AoxWTXzYyW9N7yGgvdo0Hui13CK2vuDH7HyM92NdHeX77FdZKg93oPL+ZAnvAwY05
	 7djrkn1G7oznUSrfRjYO9fWq2V59wlZMOk4ybEXmlrs/HGH+04vDCvxqUEB+1wDCwJ
	 6wzLlTaqrv+Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C85C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 21:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168167982586.11400.4549302653985424920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb62cde199f31f4f97ca7ca2c049b0237e75762065b58ff897b4618cdbfcff3
Date: Sun, 16 Apr 2023 21:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681679825
