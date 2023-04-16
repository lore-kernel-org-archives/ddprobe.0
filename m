Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0587E2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 14:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D631DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 14:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681656425;
	bh=LWVU0LT4Qq7xkKyZTTLtK1PQmEGErwDtkX21k11NrGA=;
	h=To:Subject:From:Date:From;
	b=QqcvvO15jyq11twZ9LXy+5ktnCMbun6wRWt44mxk2MKEEvYklzHuGU6IlVrpc/o3k
	 bDTWZs9CJ7mUo4QrhNzguvXRoky/ftlxbsn4vk9o3X0C1F4ktB6A2MknzxfbontggY
	 jICW+ct/DJMu3B5sVB5HlANpP3Y7cYKLQ4Lja0FMijKsgL1sFUfmze3zWBTkd/i/Ky
	 k981b0Kin2MNOqJ9jDfjI3eW41UpkOg1Dq3E92xDPoSLFzBHO0QlGqrGBK4HFgZC2+
	 3HMJdadKsB8AIpn/IplROkfNCzgStQGgdCsZMRHU7ZdcOFKYgfwOEozLZ+WeYLr8Ta
	 zcbtQ03hW2VAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD46FC77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 14:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168165642576.14571.13002029795255198083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031581a0505daa9db9d701f99ec7a2508ded455c27cf8a5ca17eb91d4163e9c6
Date: Sun, 16 Apr 2023 14:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681656425
