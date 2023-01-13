Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BFD627
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89440C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673649087;
	bh=Q8+n4USP06udpUqWEbwfZJHzLslX5K8IfljRLWO/nuc=;
	h=To:Subject:From:Date:From;
	b=YBYC13MYrQQ+U/Xer1IFoSf0JlfgQd3fAWPXxYhyl3ku/pWinW/tun29vR+HaNx73
	 PTadr8oJWTaQhVdn46QPsMO+8UqEpWcaNCo/iS2zN4IfUcr1o1sBhouhehQfLwcCFP
	 kNyLZ7ljEiWo4DnmdL5F8Z6dOF+aP9F3qHbHDDOjqmEC5Ece0l5UAW6nrIj2niFuZa
	 hOX/20LyQu9erwhwvDUCdAGAjSiHLU8bSBsaFqZe06oBWLSNiiQZdAMeES1lKHb58M
	 pNqlVzOQU05ItOblKMwfC9DSA/0w7oSDz2CvRyowzK6/xfAI+b323ewL9eBqLoK4dZ
	 ADOz+4ghTzj0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6830CC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364908741.9390.311376527773213570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c018f5b33a86574e90d462d2efe55a57b4f930a56710493dc321c9b7c7ecf0
Date: Fri, 13 Jan 2023 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673649087
