Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFB41FA2
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A5A0C433D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663747253;
	bh=zvb3mggTQSeNAZHIVIDWnHUos2SpOKAeFoVH1rOknbk=;
	h=To:Subject:From:Date:From;
	b=XyVWSVFloMDQh01+CUwC/jBDivH3gt+dJiN3u8YBDeEcBoXsbcQRrN1nrq2bpYpl2
	 D45a0G3QZyouN/eLl+CQ6KakWDqlcLFC7BJvJqsY0AHOO4uYJFbT0HPMKsGq5YvbMU
	 Il+HyjFU6waBQ8HDKBZ1FNP/f8UPCZyJkMsWBIpmILj+8iat0wgXXfr08kOGIHwEEl
	 /a2GiigW0CZUqFQWpHBEAhXDY1n0vb1XoY6SU1hoVm3gCLwAcYz9vvFpARvFNcgi2o
	 unRemGz06q52g5A5q2DDC/7Yp0AfsZv0hdyuSmdZJIQnVG8k469QaWW4Rje3RFkOv9
	 Ew4Wonz5cB7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 523B6C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374725332.14377.12145064017174437090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef807157e5e8057f69f1fdde0e273043b9e4b4140a6cbaa44081c71b3e7f9376
Date: Wed, 21 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663747253
