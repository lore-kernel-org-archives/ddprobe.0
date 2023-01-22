Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD7EA34
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2952C4339B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674390725;
	bh=2hV1+gwkmz8FOY/6OkQGQkGiY9U3UfUfY4EJ0NiO7Ko=;
	h=To:Subject:From:Date:From;
	b=u1cK3h0gKWsiQkr+/uENjI9NxpmpHEz/9CelfKixRJJT2Hpyu6G5VG5Uw78RzOsh0
	 jCt6k13P65IvnIXp0uOjJejHwux40A7I46ocZS2BdOtbM8EmVTtfirbQG5JB0ASj3T
	 FacZcEjV7ua1xKfrhioxOLDW+l4SNI1ITcXH10wOATdOVQugiR48HtW3IuzCizkPIO
	 KB0bTvfLdCJR1fgeDGmOF+SWjokY9bKHa4CmOuhmZulfLzH8XAaqrSMdPNWcu+qP1B
	 IJySz5vAIpEqw6LsyYR1hBB/UmwkEKNWYvKHNDZM0DUftYS41t2w8Loy6Hmb85az+i
	 ilhjXHEJP2bDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28F3C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 12:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167439072578.3866.9129574715411416166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6063412d614019f1bd4f4c55a058261f84139fa128fbfd9c6b64973f0f15ac1d
Date: Sun, 22 Jan 2023 12:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674390725
