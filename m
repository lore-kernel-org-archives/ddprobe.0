Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFFFA49
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 02:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECB8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 02:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689559268;
	bh=CDmm28JWjQniIvGzFKnWEQ6Thwg9+6F7hqbcOFzGg3E=;
	h=To:Subject:From:Date:From;
	b=Cr3muOc25W1EhpqlgCeaKc9Z8kZyyb7CmhZ5CFW/L1BhtFYCDksDwsMCdki2x4JkP
	 pG0wSA4zAdmfSNs94tuQjeUUcakSVpXDKjNoo6F/rIO0q144HQWw7oJd1HLBHm6Ulz
	 A73WIEZIM/CeIn6iZYwbLwR5Z9cpKXM0J9MQ45U7gb9y5Jn3aOqrc91bX2HKFEiw7m
	 ScWNhXj2LtTo2+G204QIXZJpeQBcXAVO4RCmW7p3mUqt5VwbDHhUAlK3rRuguYDcYx
	 ipTT0Do/6H7TDxxWMCGNMmAGuReGprVQT3QmK4sb7aDOvbFdQuqK/tkKaXnMtfGvxv
	 O+6BEmyiSPPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6F74EB64DD
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 02:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168955926871.29941.11198711552516226434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da717ecb05c063dc475e55963dcdc7efd05daaf93e857b82552221f44aa62d94
Date: Mon, 17 Jul 2023 02:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689559268
