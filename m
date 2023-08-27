Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F56E1118C
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD605C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693155848;
	bh=mdID2yxWX1jkGajccRVyuAxqnP4ioZtN3bvGFr1y1Tc=;
	h=To:Subject:From:Date:From;
	b=D2L4sMH9AggPnDQ8uTOZbIMuSVay8SsS1sgBYz2RHqlNTLX4UBp2oWKBOcYnfsfSL
	 H+CcIXwF5QIVBuHih9hNdNlmJG2JTGQDEsbB6X7CYHG57GUl6kmDr2cibOD66Ed+nc
	 9KbZa8tmo0pRXSaVuwsQ96UghTRcg5GAc8swQTxqpf87TZ77WTwqvC2mgyaFQ4WrQo
	 I9k+A5FD36oM+fThVPp0IV7n087K8FrX+IvrZFJAKe5l0AceCyF2G6VYf1TMKnEyaA
	 nDbbRI8pzVkbcQZFU8ohtGg9QXOOo4x4x2Y0kxDCk91hpXmKD4CJTdB3K9KB0aWdC9
	 cYz0ulcAFZjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECD0C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169315584870.22908.6052067765152395862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3468a3764224cff1f59ddcb3c1eb80256c6e0ac046b81651164d1819dfdf0441
Date: Sun, 27 Aug 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693155848
