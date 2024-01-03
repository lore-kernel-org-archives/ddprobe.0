Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE6891BDC3
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUNGTmy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96AD4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704299296;
	bh=DN1hPKjJXVgoH9kCpOLESgqxCgkawLBdl41+yb0+LHs=;
	h=To:Subject:From:Date:From;
	b=DUNGTmy7hVFE4SVAUFjtXMw0V+0n+cEj5lwzmdfEpyxBRV1qHPRYNQ7Yt6lLCebQC
	 mHtpiMFRc85fXvZC6KSQiutCT1S5kcAwQ54up61K5NiuvubuY5L9cBbhf4Sy77qXxJ
	 uck1ERYKCVL4Te66rL1HsCZXS0WMNcnrdfTTEbHhOFQsJLI6W9gOtH6aEFENBTV+Vg
	 UuILpJT2AooolKkI5FgSwTeCqhMv1uhzhA2/l285CfCPw0x/zdVBZz6xa6Ao8vD2OZ
	 oFnyp06pFgsoG9XPdQr/HUkFEmzi0xqounYTfzPkBHOMUmhXwMLnHKSJ41ULWXAkvV
	 Pvp38PJN/rwlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72643C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170429929644.31443.6860870009255525060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173fcfbf5988edc79bb3c9159e2071a11d4eec8fa3a66045960c7167ff2c8a77
Date: Wed, 03 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704299296
