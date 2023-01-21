Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229D317F8
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0130C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674299525;
	bh=y7r9eqounH0DdfEhuSa5tUO0q0GDUxANI3uHIz9subk=;
	h=To:Subject:From:Date:From;
	b=E+re0eiyZLAMSty53aaSlzeJa7dG6baClHq9/gKq/HCWfyjRG44KqX84Vyea3Gdwu
	 0IMtGT164oFheEQSIxSNFg0NsqvHf/nzaOv9GLPP4J+fFHa7+FKF87I2caotwTRxA9
	 d7YorDR5HOcDfsaLM+kVJXjZwm8sasE30xruovjz2vSa9VRwBZuQLRUJNwiG0AjyTu
	 Pmg+6YPnxjwO3nnwtS+7NweCjUKhjgEN7UzcltPaOhNBvp0yhcadlcqM+q6uYMFPJm
	 TnAlV3yt11U2jD7JjolSAaduyyuSt7dk9S8sw1hiUGodt/gM5YPbjUI94NIHb1eoa7
	 N5ORzh4uwyv1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B594CC004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429952573.3957.965837206054005704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91dfd2152de919994dce766bae1db8834807c8eec5cf807f3c39a887a7bbd57c
Date: Sat, 21 Jan 2023 11:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674299525
