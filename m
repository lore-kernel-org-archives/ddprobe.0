Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D32EA4416
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85034C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665686453;
	bh=NXsovHvfctwEQj+ePF2FE+3xCpzZ1Rh6mGbtXJ+soso=;
	h=To:Subject:From:Date:From;
	b=LKBqeEpwIqp91OSO0SIwBjMwusegBcmdWUoceIKTNAnp4vU55yL7Wff7ANAz/oNL8
	 Ym1Xudew6AjnOb5qhyePctR+pdBhkJKdXnTR3PtXOPVMdc+ErXS2A6B5N936bnvnD6
	 ZP3w01dY5gVm2y+YgH+/3NRphNBITdNlV9tJSQPzpEcyM3copYcFvY4yO6+BDbxoiA
	 uMIUd9+L3HgvAl3f+q0TWk7KzIVZZCdyTFjnDAqzTU4ro/seG5vYKsyStBbK4wrS5I
	 qg8B92gqeMB9ECu0jTKbwMtu64TMUNPzfxkJdV6WlHLfW8iGYWbl8ORA8ZcRC6iLof
	 Q1UD41LuEHAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A504C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166568645335.16719.373194548790395598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336120c02e2b9da0fb9f8c57930b777cb88dd7f5dffd7abf7d025411f49cf4df
Date: Thu, 13 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665686453
