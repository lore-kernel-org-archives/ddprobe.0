Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43F6371
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A05C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664941253;
	bh=nShkYH1HxZCzLiY9gcj7EVvFR+qHl1edJkWsM4cSipU=;
	h=To:Subject:From:Date:From;
	b=fRIcsc9u2575774GLFGrNqfXzz88HQU1VKQU8wA5YbboRjqr4rlvoRJ7tS3+/UUSB
	 Ex3A+L8swm0HTLbzHd4S7WwSfU1zGmW8zgyr2Ecwhog3xwryosSLOYblohJsf0Wd8j
	 s6kprSQ6IGNFFAjPZ+G/1W5x5PbptnHFZVs873pa1jNZJIiULwWMEzWeAJxi5IgRbh
	 THAMCvxOEwUmORo1APgCm+u6RqfCCbnmwp/qalpujC151c/hkbRApnz+c54bSz4rxR
	 xkU6LosADPVNzpT/4jedANOsTAwV11nUXGQUbbo6cMiJIqnYRJm+yoKuhzF5pXRssW
	 /hv+StoA8yV7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5250CC433F5
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166494125332.28677.11654777594719877870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2260e205ecc9dfaa4d0ff40005ff4480eaa519020e76e6eb36cafd33ef40b2d
Date: Wed, 05 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664941253
