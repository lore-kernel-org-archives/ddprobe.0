Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6321F1107
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 14:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08ECDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 14:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674743586;
	bh=8tzB4WDLDkSnPlBNVRo7GGkHq4h/eCWULZXKYMajPPs=;
	h=To:Subject:From:Date:From;
	b=V0Iwq/sJSfeRF4Z9dzvo8vLGWSAiGyiZ0t5qT8/icuGaL6QMyuyeJGTRoPL/nBtsL
	 P6BzxTGh60f/Sa7s30/3x1omaDlLG6SFSy2Kt4Q2rjXZLW271gsJv2OPOh6AV15OEq
	 TSn3DGu4MOaW1gCx7UJ3Jc28oEkNeOyHjQ0a/Q/Fm73RQDMcvQKzu5QEpIRjPdsM0w
	 7HW2OErfGjb8QbGK5F3lDsgjobFS+Xd8vq1K34h4s89TyAhuwqPY6FENRNUaq1hoef
	 CsTv2q0CrE9XmDiAq2NfOmPAWmD5uwrlHgLpxaC6RcYd/qvZFfxOZOFBKY/MmQ9/aC
	 eDOF4Z6vseXfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2957C54E94
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 14:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167474358590.27053.10373378387431445949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd4ef1e6224c001153be92b2692e857e9eaf7c50c80f12b53f65cb18eaf2301
Date: Thu, 26 Jan 2023 14:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674743585
