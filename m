Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D4C2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB0AC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661718052;
	bh=sQbfKhl+EV0THXaeX5Xr73OVo3lBL2lgI6wKlxbLNDM=;
	h=To:Subject:From:Date:From;
	b=hDe3GE6WjJnsfIbcIUwJlxfrr3FIeXG7uUYyxM4UJj9yeo8v2eqhH9i/q7IMYL18/
	 E4NAyblFDE/T9AtgNrbeXf1iZzNhlAgSxJ7sriJ96+SFr9uWSsqvmQJw4uXp6HzOan
	 f/LmVqG2U5EghtcdO0tc180rvi/TBCPYiy3zjkEOTozcF/6SAmPHGNeWm88FsVFfvu
	 xC4DtGLd6Jdb9hYEnDfcOh2RUESScXyrLylr4yOci3Myy0RWwnQFwz9haBjAH5U0BE
	 MyNFmqrxcHDhNjckDOh6Zd9uP3Rg+88NJTv8sfDuuCs9jb467iVU3/aoXQFCuYzt9d
	 ne4ZSCmJNfJyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5244AECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 20:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171805232.27377.13937487525884717075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfbf5fdaa4ec206973d99a3647c3da184cd83bb380748cfe89ecaf76a284588d
Date: Sun, 28 Aug 2022 20:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661718052
