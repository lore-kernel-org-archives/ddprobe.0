Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4617C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 04:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E77C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 04:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683174065;
	bh=penq66d6MPOCf3lbvZVsthi3OxNVZDN9PBZ3tgIA9Y0=;
	h=To:Subject:From:Date:From;
	b=SpbBXu1R4Pn/7nZGBuOazbb7/tbFWa3euibgWIZfa9TDcyovfGHdfIgLbkWpU9rWL
	 4OkElN1/ZZlCpQinH2rkM9aQfRKCZM9yi32JXX3QkzE6KF8ZB12jD3Ug2bbtKB14Da
	 Okx6DETQ2CWyK3bKNaTdaCuJWJ++W5XstMRml1cMkSKTvCcFVE2b+HNItFNomloqwM
	 GD4vkgm/Ze6RArI40fPrDLMj8LHVWWhkz9NTBf3x9N/eHEEqIAN3LxlCmvDa7FVJDc
	 q74HWULis+8Iqowvc2gqnr8eITndAHUZNikMp5vjNYI4Xxu4mT/SM43BbyVT2EUBoz
	 Uwm69EQtxgjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A02C7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 04:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168317406580.22068.16536998939421688737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3269210d631b376fb461d55dd179e614718416d5952787aa3ba65d7ac7fd2462
Date: Thu, 04 May 2023 04:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683174065
