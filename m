Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9CA1FCF
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 769C4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661421052;
	bh=l4ny4J6EYjNYu4V5PKW6QVCnJgouEn/dJjVkFcIgXKk=;
	h=To:Subject:From:Date:From;
	b=qs109pndgcNh/40l1hUMSQzbxOrZC28L8y6AVpwwJlHcPnDELa5DQ4gkWcm9Dfzne
	 HppJqPnRC7T7b8mPDV+H4eWLP0QN26fsPDwjRqLKjTuuHJK3s+nf6q+hR6bJBud1ur
	 bT5gPiaKw8SBjf34LBRXECLpOR1fAOFcO0in+Btgn6M62gIjAm+72IOghXySR+3SVJ
	 u1qXEOXIz+JJgGEjvdVafUIYHm8KR/dUo0WeRNkmTobE4PHzBJ9L8J8xe4u7dj9Tp/
	 SMSK57NM0Rn3WeE1PokjdxDKI59IbDrJ+W95Au/MSRMdHK5bY1jEqeHvNAb5b4kUkC
	 uP7x6AWJWz8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CE1CC28D13
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166142105237.30276.8622723770185021843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38e8a8d2f5a502f07982fa0575eea746e635dd552f7fdcf404abfc671fb917a
Date: Thu, 25 Aug 2022 09:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661421052
