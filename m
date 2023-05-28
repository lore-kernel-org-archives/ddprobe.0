Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCF7360
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 01:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98CEC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 01:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685237345;
	bh=eeIOugQx2YzTEKC4gpeSrTMpC0OxDtfejG19/hycJyc=;
	h=To:Subject:From:Date:From;
	b=MyaG60V1Yd7+dvHjPjUVhkwif2ms9uMOUOQ5bjz86xD4A92tuQR7pjJLoriWZg48I
	 LNQaCpLoj+53n3xqCCLkEVCc9SiEi59E3uophOONzvsHrD9ZMHx/HFXr1JfdbynCcM
	 d5BILNC9QQ3fl2z4BVLjYbQBf25i+2Xwbn9x6ickd8TveDJW2W6RvxLS/uEmXebeNT
	 /voSrRgL/VAt7uFMIIEMPj3cqGSAzii/W6xW6p1IDRw2kd16yPhfhDixvU7CP9e8p1
	 Zg2MM3Cg0a+pRV1Mkwbb2uO8Xc8Mptp64jTvXiO9nTNgnpcJlCl4yf6PozpdmGPjil
	 CxN9tYB6TaeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC45C77B73
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 01:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168523734573.22842.18296453716743137825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf11404405bcdf93e90bbd7eb83f8d3b65c361ac376c51c46ea34917e36f06a
Date: Sun, 28 May 2023 01:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685237345
