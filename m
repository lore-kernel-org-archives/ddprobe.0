Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C7215A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 01:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F5FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 01:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677203105;
	bh=nVTjN2Hm+u9JMP5nP0n69s294GmtmUWCx55hpf6n0iA=;
	h=To:Subject:From:Date:From;
	b=QIIb/5Q6aslvVcksDPkzwmEVVCLQh3b5iAF6RTFd+kdqMda6mEKCv3Vvsu7eZ7/Ww
	 242OIFbNOUTq6cY/pJ29AMAH6oixLUCfhQAYa7VZbc9o56tmNpveVmnrp1tVJ7gvTU
	 mT/uA93cGL3eOumQ7iwcc29/Z8JEEAHUL+L197D7w5F7LvFALMn46P+1tvXerqSplv
	 fueMRBR6o+TCnc26pSWO2RotfwOLhr7TByktJdytqfyAthBSk18xub30GqBL0BI19T
	 s/Xk4KV4qHk7gmGfmuV1hV+LCgbZrL3h8yUx42AQylI5tD/mCxPJ2pvZEicYwdS2vA
	 IXTRiy9RnWeJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8B51C61DA4
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 01:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167720310577.29461.15151863498630067041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dc0b4582033a170377cfe58e31fcdda45aa026866d798143c8fef6cb8d2e28b
Date: Fri, 24 Feb 2023 01:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677203105
