Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DB61857
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D46BC433B5
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666062653;
	bh=TRz9Bgqh9a8sIUhKCQrzTN+4j9F1unvAlFehozL97FU=;
	h=To:Subject:From:Date:From;
	b=qt18h4C1gy7nSevPfOQf8anyYLH3ynxO8FgAWhBLrvWWr5apVCmrZqeCPIHz3UHhf
	 e5JZ/NtJ4K21w9nCt1uLYdkRiM22OkZ6H0r4GoNw8q0W6DE9+lJQ71CaudaW+Lnj+N
	 hc6uUWcl1LNRhtoR1DpA7YYOYprsIfPsv/n2wO4kk47+VBpwIjrE9ZxFymi+sV4416
	 o7MhsTqrdYZzU4V+oveWX1C/pFPC8BLuyfd31yCho2bhexDLHRMAsspq2dsN2u47jy
	 9mwBrtofGOmOSj8ItM81IJes47J1os5FAY/eg7JuhyjNVU9xK4z+fIdmIumqb4GXoI
	 CZ4TvxqJ5yJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 505C2C4321E
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166606265332.11107.1483837176541091475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15183a4b83d450b58ebd2543f2701ca800c6e7fe28002081328e2137b25cb406
Date: Tue, 18 Oct 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666062653
