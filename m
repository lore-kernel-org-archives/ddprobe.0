Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE07628
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 06:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E5EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 06:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686204785;
	bh=XgPfP15g1iux6c018sSknSMpFXlBMXGS1si1xsVqVM8=;
	h=To:Subject:From:Date:From;
	b=r6FMCnh3+EIyIPyZh4+CxjrDauvcPN7QYaong960lWbYri7wJlw9A0ysZ0sFSH9qD
	 6fch4Cj+btl/4pmt7Yer7Fj36sGB9gGCAiOrHo+RmQ3dYWfex62qtn6rEHzC3rRmha
	 uL8+Gj2OG6qm+d2OHy/Q4WjnLaq9UVDztmxlkPGMJbxMGJ3RqPP9jXRA/pFICT8bnN
	 cWafdupGlHTIhjz4jBLZj9FyV2cJg9xrY6FC18L8OlbUio5mWQHApbp6P91vK5eYRo
	 vpIfpQj3g7RmVYVpmI0aw8LfNpxWSJ2JrHMHfqOL+WpH2Hl2ctpZg4lQS/hzsiiql+
	 Qam3UG6dGvJHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF5EC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 06:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168620478576.16349.5242763666793032142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dce66068dd885bb0c27066edb69823aaef00969926ad04699c89e886cabfb36
Date: Thu, 08 Jun 2023 06:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686204785
