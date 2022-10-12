Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C66191
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AEEC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665537053;
	bh=6uRFlR4gJ863o328IXaGnAnAY/NdAzQNTW1lzmEQHYY=;
	h=To:Subject:From:Date:From;
	b=KMCBoQrhkREb/jWofBmRHJ76fCdj5P6blrQgbpJrIR3IK4o1zqZ0TNOfKEDPBgg8W
	 mjfiHUgUN2LR6iSWZ7BgGBCp3A5iOrC4BwDI8cfn5kOKMwc4BepdUVdGbuhnLa5/TN
	 JkbvsfPAYd/Jjc3IJFUrKTUrUaYGD0rV0p/iYUlRXeoqDXaKr3iwkbLcNNAKRPaSXP
	 XeXe9y/pr4hWnrmOiMroNjR2OfymdrFn4Y8ko/4EhqacvaJYJ7cKgQiHDuVsfMcSOP
	 Av17+xrawLvwjUzA2ANEoQRSMHNdGUL4wFU7GpuLNQEWA0BcEzhY/LxgnkmGQ7ryVy
	 izi3teItwC6mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 547F7C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553705333.18750.469291454337656364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08ba90201a2a8442a478e7b4b83dc385af3bf25d7b677ba844b15c11a00149c
Date: Wed, 12 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665537053
