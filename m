Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05C928E2
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64E58C433C1
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667820654;
	bh=Q2hG/aUC8xMhI0DIFEVW1fWU/9qV95ezxt4B7YXYtiU=;
	h=To:Subject:From:Date:From;
	b=ajyUZJnwf7oEJxF+cdSth1w0oRt9lw5GtMIT0tk6V5MYtz4MUp8GDJBtBhjU2LaEh
	 z3IjYCa8TDMrHBKf44bCdMU4nGYrjCBxM2ffnhQQH69hWuSH6sslJCFrYBcRHN8awl
	 el0/8O1W2wzmqwnJEZvYnrL4Zx6Mh4Pw01tAiVeqT2VpgEwQBiInr8kB647TuMrlWD
	 k9pQvyEt7lRjppECo3ymsMW5V0OlS0rgqAzAJ09gTbLBn/v8ISbgPlbvx8PgiI+sZa
	 veNVaGSx6egF2E5lfeFbmnpsQ1kOw/n9zId+zZ25qPQ6ePUTuushBHNXd9XPtNEPNn
	 oEnDWLWeLVGEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F09FC433FE
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166782065431.6298.10463626223429040374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae5928cef11ee70762d39b165a7642b7ebdff8a8d95465c29a21d34c2c1e47d
Date: Mon, 07 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667820654
