Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70CB2579
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FA4C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665343853;
	bh=PlsWt95bKpNogdqmv98jSa6OSEbi8+vM8JwfpjNxSXE=;
	h=To:Subject:From:Date:From;
	b=s0CtbLMVdXruDt91PXp/l/MGZ1Njvc1wKAHbLgkGcOFYEW4ta0L5k4BFpr+x3x+vB
	 CQ9tFPRhGymZ6Adwgi+zOzyVc06jGuW5WcN32rNnIOARKUxnSa8BkRAg3Huexq9H0d
	 cgtvCjqZqeEnR1NYMRjQljhK033d/egujpiijvPHvOCEOSyE8YqhZEhdYaZnKz8q04
	 VFYBnpMJyoY6YY4hJZsllHzOnHXxulTIu3AMJHaLIY58kE0L05DsGm6f1Ya8IODEEm
	 ydwhs9kNdaDjo6Hodb041agtItmnIOh++G4e/rS6zXAvsNIrZpAWlsNdJbz8Ue+G75
	 1c/7dRGULf2lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C36C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166534385332.658.14415097950595792535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9646880072d88398049c554e907b39ed7387bfc60125587f769babd0796a30
Date: Sun, 09 Oct 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665343853
