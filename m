Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C82AF17CE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718B9C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665578453;
	bh=I8jIByQ2bwZ5mN9v2DT5VJ+g7lyrR+4ZbrrGYJI8EyA=;
	h=To:Subject:From:Date:From;
	b=m5ZFjdEzgCpL0D/vCMyPLrx4F0/0Wuw3Mjq9WjT2dyCcyUklTPx1/I7jOWfNN4B6Y
	 bXoH8geU2nPuqA/BOS9g+gUJ9NTlDD+3iefEn99XvaIeK3cl3MTeC5TS+MOHUOHi1B
	 3VHrupvYBVHnr854+DCwrk8zthIu86s7DWGoxGLLjKqqU04tf9esO+Y/yPVJjLxAFG
	 14hANsUKMQo7/Sb0gvFqWfkX85JAa/3YQY4URoSU/02awrCTgKyHj50WdPRpWeuDKA
	 S55BBTyo4SU3TmCdzb8VJ0pM/WIAtuXAoHIhzdrCBtYzSEw7ZgtaYumFAYWaH39O2m
	 11Lh2FG4lpphg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58FE3C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166557845335.23341.18079830838632365999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45afd7a312d82f4c648d9ad5909b11491632d366c80962fb1757a068c4ff5b93
Date: Wed, 12 Oct 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665578453
