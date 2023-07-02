Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F56C376
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8802C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688262248;
	bh=wM+p/tOPuJGwyLeexB0QFRqf9skSx/k+7hI23SL4fzQ=;
	h=To:Subject:From:Date:From;
	b=gTXZo3f91YqsdfBHYDQSl7QrI/oucwh2zWbl8lXA81UG9IdPVuQ9YuRmJGhUxPCVj
	 tLhuyiaAHNI3ySOenkj26mXWIcz/tuD5jWV3YTY3lV4krHbViRn9bXoh75Xc6XhBpu
	 N822jzJwFpltzFQHmM8TgN6xPSxALRxJmwNbgfxKlZTF0ko4voJbuf0oTXCRBHYpF+
	 V72lmUAARqXyF0oZBK6+++4gyDPeezU4aMMQNDW75JvmjYg7oxldEo+E1LFjFhUHdI
	 wgy1DZ2qQfAtcoPkRpfL3PFosaJgGd7qUaQOx/tMRPQ94ePMgh8toXOKZmFXFbPi9R
	 CheZ56fPqw9Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB56AEB64DC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 01:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168826224872.16832.4945527495682376336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36edf09987f5333948801953ec89c20bd89ff40a0d204e5c9ba1e1ffef96282
Date: Sun, 02 Jul 2023 01:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688262248
