Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358EEBA35
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUjtj1ra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9209BC433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704128296;
	bh=iuwL7IkrhAyRHKr6dhH2i+pmutu3uBbjhQ1As5leJA4=;
	h=To:Subject:From:Date:From;
	b=mUjtj1ra0eQxBWskcbm0PcghJK3wGU2DxVc46MIyJjw0S5U+17rMFAq5Rqo1EpllL
	 xWe+4uAjzfkId4mxcFlSI76lVOi2BZozXq5oBXrCSVQN1RWchUf681WziaYQBcudwj
	 NLNtDewylCLjJznC+dqGAPksjMXsZRnTcMNbqBJ5Ee4rQlaXYOjeXnvCYfAbxqAWqP
	 cEeFu30XYnv7VJtN33oEQKuLMn3a/2YheKYCFRtjtbw4+eqgeroq7w5r79Cso1mijl
	 wIisIBxqB+/a6aAr5nlzBEeA7t9lcoJyHDSvJeHkQvJz7wGwimkzKIH2SfOC9uSqkw
	 gaFfAQ4g+j7HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70648C47073
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170412829640.13744.8518595693193963852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a723d1b02539e2fcc8f0e2f495b78c344e63a08e57d3e4cb4fe970edbfd71a2d
Date: Mon, 01 Jan 2024 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704128296
