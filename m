Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D6671C06
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE9AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688881628;
	bh=P5yoQg1q73FvPq1+2MveblerpLRUsz/0xNImSMjsc3w=;
	h=To:Subject:From:Date:From;
	b=U26gWqFqiigyLMuRXapldz9Sb4Npx/7ORQ5oYaP6Yh/8ybaZA2kdeily5zmOjlUjL
	 BNGd/UF0y7WI0Q8LaOD6jBcBafQXc8+eGDeq4C/lYgtaSA5QX5rb3c57/vIXGLC7tq
	 HWHrEwhLOOaevM/ojXxMD9k2g10QVkP9TAzEPRtke3sXGTApyzUBbVEc/rrk1PF5Um
	 EMnFhff+mR5um51Dxdxwjp+TR/NMvpkppFlZojpYXmvS6JuWArpBMnXfBdpMX1fSrf
	 ZQxC5hWGFXpbchkXCb9Du4NYw7IL2h2kLNHSwRalEBd0fTChOtqP9YI7Ad5GjHVEJA
	 fZQYEEaUj6ePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47F3EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 05:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168888162872.9499.14159227379649126194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49bf942157b1bf916284d40541496acd4b79ba22a883eeae66e51673aa7ec331
Date: Sun, 09 Jul 2023 05:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688881628
