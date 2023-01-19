Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26D7A950
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8628BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674150687;
	bh=L1w/8NG2PmRbYX81UhRD/NGjlSap2Ewdw0Yaoum3vbU=;
	h=To:Subject:From:Date:From;
	b=SBudddkMqLMgqLslgNEhoMxOKsiYNCdGdeFjJNQOAgOUA7Qmm2VP16Ssr6md1n90t
	 Eaa3Pp8rmj3Ev3e7N6pyjWR6n70OUfCUxVkv/tUFov32Qy9yWBSFpoG30tOAvJeQlc
	 BPsTCTQ4SMwIrS6hZUZBu1FO+Jl8yXn5zpHRHdBEZwgnYrOSJxS4EYETqW1E+6xCo3
	 96nUNzCAYoeCkqeMZ8+OSZo1pFVv0zWESjQg3b45ZYuUWuAUtTiSV4UKCGLnPeLur7
	 VLAKkMkCvDre6ioCdc1zVpdPny2pAVk5KSMxDvJD9me+SBsfPgr1FodQYoeziEN4pt
	 b+nmbjrVdS2Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6966EC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167415068742.8045.9796087027133690212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf7b6a0d0eb7063d0d0e1bc429352ea1243b40e7e2612e0eccdc331319377df
Date: Thu, 19 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674150687
