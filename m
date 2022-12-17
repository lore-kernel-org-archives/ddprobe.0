Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5339A5D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CEE1C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671296487;
	bh=FOjyxUcuqQDWfJVLxDQfwAV8Kn0EG/TgRrrJrzb4FGI=;
	h=To:Subject:From:Date:From;
	b=pmoTfX3IkdGhrw/RSFtt1TyPjhvm+AiPm7YQV3x0Esq9v31u/5Sv2s190UcNapjPc
	 8yuuGQi0L7y+y/rkSNrYJCS11CFPfGX7vAn8WWwZG7G/FLIRBMqQ1O/Cm/DYR3Wvf1
	 r1MRQDpAuy5ca7QtkVoRp9mKQ4D2K144TFUCooCAiDOePcSrqWRkDX8hoNbG8ShoJY
	 vNSobGQLQUIlZCxFdzg/nJAOtE9Y9CnrQJps/3OQbMlL2C2jPDwgFp2mBCRzl9IsoM
	 UYJHaS8s5mM7fRiJUsyoPL7KaEI1fsY2ctv7AM7dSybt01rB9lvzCpOSzruWwwkaeC
	 15wjeAs6f3V6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC51C4167B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129648744.2754.7832286931072247639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b4aec59c9e458b3f9d9b35fd08c1968ce41cfb7a1d123e4d735f2f3cb76cb6
Date: Sat, 17 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671296487
