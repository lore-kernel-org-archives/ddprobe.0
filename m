Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E6723D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 900E9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671289287;
	bh=PVyQWZZx5cr2h0AsgKLSk9dXxZtKlU8AcemP5s2+wC0=;
	h=To:Subject:From:Date:From;
	b=sLMQYkEht1NN9kbNL/iTVqPtRtK6SA1v1FGJgBn9NLga6/JB2S4YtiA86374vs2mt
	 Ik/zpvFqi64nn6w2bGH/oQA2iKO6wwdUhdSAiWOKUet8CXKHRP1UeZCHZAvZ84kBpW
	 gCB3iI5p6xRR70FQr7P9jqBkJMm8ObxM+NKFRO7AoD8hRWWOpIQFXGloCX+K/sHOMc
	 5STYWvlYXZ59Vf5pYzqk6iafeE4IOuoP/nleETcm2jpFX396kar7esAbhd5ulGH/Bn
	 1VnSNQY6b8s8qmOhWoi+cABNOlokvSoDVxvj0zAvu6dr6GTS9fMtpAKyGYAqt/tA9h
	 ka2l1PhbO4CsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E68C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128928745.19253.5554493037755677977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3f26021e4e20fce8c5561360e5d3c6a273ae75e02f701c3f47082a93d08b16
Date: Sat, 17 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671289287
