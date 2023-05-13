Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE721846
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF08FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683972426;
	bh=hJFt0YOqskXlB/P/lxBcsUxwBo44B4FxoVeNruqP4xM=;
	h=To:Subject:From:Date:From;
	b=tNqz2V6OPnXvKsr93RhES4MFPiCeVHr1qUw2ii/QNBTjYZz44m3Pi1B6ujGJIvglC
	 LNfuuwuu0XjFP5TYHWc33ld3/ZgP9vHDQrCIKqCWnPiU5F2cTZxHy/cD24TAOfJoUQ
	 w+AZ2E1HMSP3a9TCRtyP5F+VqvvraVPNgMFdqFdE7frOrzQ800hFLQ5VE2S5cyH4fi
	 YtSq60llshcs1WzSc3aB4yX0fxrI+MoTqDoHvyotGNHYtszNURYPWyiZBaIpmOAfUX
	 avxYCMyU8Ei7qQRyg79LCrVFjaRwDDxkzj5MBky1pl1LHyiSNds9MsKluKzDeTd3S9
	 IlqMdBmJa79zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE6FC77B7F
	for <ddprobe@lists.linux.dev>; Sat, 13 May 2023 10:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168397242576.1449.13772408906472540666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e531cc7927784f32978208a490b0a07b57877fddcf61d110c1bbb79d2240bf7d
Date: Sat, 13 May 2023 10:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683972425
