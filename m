Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC39D7C
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73394C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661821852;
	bh=XoHfP98JxG0TNTuvI9aCFQHhWLfQ8Akfr/bfE1mOIgo=;
	h=To:Subject:From:Date:From;
	b=pE53cryFBJtUmuy4zJ+mAx79nyWNern85jjgdPLsF/uaQ4Jt3coDof/F3uuMC2I9q
	 +PnjYgKUzsJq6Mqfp+Ctx4oIJXmda7Sw0MWGf4LoJ1wzn32+G4PaRR9fygSn4cLW9I
	 m6B5G2UmsZFrYuUlZdzzT8UZMrMQx8StUq9y+inumHj/AA+m6FBRcDafy83Uo9LZDV
	 moRIRqHIamb+PjTc2lwgt8KPtzey+L0Q8TB7GROFwQ89PXzbjFMvTWDBVveXOTNO+1
	 so5sLMYEWw1Kulm8fBWJ4lvt6aaEyOeeHpQ+h+WVKlGuOTgokfTexYNcqonNVpYJRj
	 xjO0Ll0xrvqSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557F2ECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 01:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182185234.21260.3137457411813266715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1e70dac44aafcfdf0fe8cb890a9cbdeb31a15e8850d81f1db55d765e724e869
Date: Tue, 30 Aug 2022 01:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661821852
