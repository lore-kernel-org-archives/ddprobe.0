Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 925FC362
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6950AC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668817254;
	bh=BoWuAet7o5KeoAFcNXF5qkcGXyAmDatpTh36HDzoYVA=;
	h=To:Subject:From:Date:From;
	b=I/VgHEPmraEbu0OaAk9OAhzv2TQScNLtQDBasUfct4JgLCJOCqWGBhneRT2r/1/iA
	 1u9bZACF9sgBbqzZFfpXzyFFk+MR5GI1JKvx5KA1fpfFxukJnBFNe+sN7TAxbz85tb
	 K3q9WODJc8J25IYsTQJ/lVRDFEQZqdR+rNeIZoUfWWEYMGDg7kcB/REX6vo1yCZgPn
	 NkKi/jA5cbxOnG2G2/13Mi5SmFlNEmO+YqKJAUhkB2h1LnbtgrCIz2FZUoEIjME2Kn
	 TCy5cluBvTxuoFnd2/uJkATe4RMp/wO1GyinoBPTCny1BdkgN6Vwsg7zF7mYSL9WJm
	 BoFOeOjSyaKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52807C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881725433.31288.9616632659080534901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8ffc511524f58c6f51b6df001b9385cf021796abe4d50c83f4b9416c56eae8
Date: Sat, 19 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668817254
