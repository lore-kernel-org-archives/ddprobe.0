Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2552F25
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72864C433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669306254;
	bh=ebWPClcRhfodL0uFPP1WGOIW9TrcBcPeW+z/cDw3NUA=;
	h=To:Subject:From:Date:From;
	b=JcDHm8KxbPR6hQ+n2O+f/13YpG9KmP9hWsr2YSCpkHdcGijqJCsPaYG5nyPMTM9pS
	 amimrytw3OEerepwrUSKk9Hi5r8LDvUbYiDjN+FuxSsB1lam5KKBa/zv+D6q9Z1S9N
	 lb7Q1MHTnb0oEVXGKhVZ3sNQH0OGpTBogxgAeZcMsCnEV5HAMpXVZJCz72GzcSE7tK
	 omnsg8XFnQZuF2bTcDmijaIQ5HEe+tPNXBAgfQ/KkdFJJLFHhqEssdrXo25Rq12WV+
	 jCdTWpo5msxjS9V9N3pa26RQM93Tk4pMQVMHmyGl2Jy/6rBKRrhLeujhPzrCy58fy3
	 Y5xc42o+oO6FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58ADBC433FE
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166930625434.2584.4268463678683509439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b36036f01b1c842cba63f2872800e13de58b31e532dde905dc3ef9442a61611a
Date: Thu, 24 Nov 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669306254
