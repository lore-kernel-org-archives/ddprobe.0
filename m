Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41EF028F4
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 09:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FD2C433EF
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 09:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680514565;
	bh=IBy6g+HFplTkfAThWcjWdaGDi4eTVH7r7iemFps3Fnw=;
	h=To:Subject:From:Date:From;
	b=Ex+puLkXxDSM13VMWa8en2mBMX49lYFiYLLVQOLw/6ktYp6ovIVSmpspJGvHd/OVq
	 s4yDWlgmYm38YoUYaSpbeUl/cuxhhz+h+gFTU3G+6myxunRBDe4GlpAM8BaL022RlP
	 M8B2Nqlj5AQdskHU08m+xKYCBbKdqmGRqH/yPAbVLmSxHNkbhCv0D0jemhenKi6ryi
	 TSsuDar//7MtFXvHLGk1xRTV515j7/qlMkrDPPHHdjf3A7RVN/9REPoc3+x5BnytOx
	 QbVPamzaf/uyPv6qFsXHV9FMYEuIF0h46MeURpMjDOSv1FhXn2am8HA100bDXRiQab
	 UQOSPQwCDEP2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3D8C76196
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 09:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168051456576.10420.12527756214651820535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29725f1f59384fcd37863d48e2e0ef87750e26da3d0e56fc11fe943c4da276aa
Date: Mon, 03 Apr 2023 09:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680514565
