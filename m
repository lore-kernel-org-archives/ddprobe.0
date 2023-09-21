Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D2B64D
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 12:15:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C0EC4E67A
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 12:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695298508;
	bh=Dua0gCfX7dd2XTurFovdM2/L+Ymdwba5NHAiLqp5r+8=;
	h=To:Subject:From:Date:From;
	b=MhoyChz9wsw8YAzlk46rhWQVSUuAikkmavqFrHsyRRqy4v0zlJkbQPhDs0cb04r9+
	 70I1++9d/T6OmpcxM7V+OvQwp11zHOatETKKo1xUUePqs3bL11s40p/aYN7wZm+kup
	 xQtSySx7qELG5nfu7dVyBhYMIV/kZ8sm8HdIHH9E/J/zBYoVUpjWVzzfdka7g2+Stu
	 DOUDLfKnc8K1jmM0xSNl+6Vqgid6gfbDqfxjjou+ByVRS994V6A1l9NGVzDoyKIkTm
	 PnJmFz46fhahZ//c1gJrKrSOMnKhj+Fp+p2vbfp3D1s5cjX2pxVaeALmUXlw5cvAaG
	 rwiKoAJMih0hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A470AE71062
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 12:15:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169529850866.25350.5624255824217560981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ed3f547a0809ab3419f44170aa3f5962999075fa14eb79f5841ff4d9fa623dc
Date: Thu, 21 Sep 2023 12:15:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695298508
