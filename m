Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D586F7E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82F8EC433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671602487;
	bh=Y6KLrlzL4GGvrMK6C2fhB6UC1b0RJWDSUkKvOioyus0=;
	h=To:Subject:From:Date:From;
	b=t030l/Jtjvjf7YOy3s1eseW5WRPpqEB+z3OAH/v8xGvT48NarqFrO4j54fGUWQMob
	 QW1QrexQMJGfGQ58D/gYbpcS7OzXQ4IDCqMD2zDs5iqgZJRYIQ4ZlwXOIx+kTZRMJh
	 tFXQtgk2586m+jzgvF5UKHXbwAlTw3r1N8xbHjxkPBV+pWZUGaZfV0DwTv8AUSeHqu
	 I3RPHrIs9/rOBK3RuIq3Wo6YqjSPM6tRWI0X/ezwZmL4Rhw50uPqnvAasZxs+nmdnk
	 R1c5M4RumA+zVETBF2Kbm2dn1EYB+ucmWahdBg94XaxD7JSN0d2vtiIBYtfMUc13Dp
	 STvEQ6bfM0dnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61208C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160248739.25227.13831392194520368503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 857561d8c087e0bdba5646db9c4b750b3ecaacb0f358ad41643ada7a4991567b
Date: Wed, 21 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671602487
