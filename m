Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BCDE5660
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DF7C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687514588;
	bh=YN7XvD3zWzcDL1Py8UUbaEZDOGU9V0NTWdbfw5dd8Io=;
	h=To:Subject:From:Date:From;
	b=G8HjD9Bpot9y5W8xfwMDP5ngYAHNAUoGYSsQZiozNJneYkFAH57GWvIi+tieF4s2S
	 FTj2dlFqZWHndOmJU5K0LLiTixx2WzEZO+rsSOfiXBUttqqnDYVdP8slkf1FeJ4UcV
	 GhG5Qj7zGULFtq0aF0uvT052aSPbzZCKAYOGhK+WD2lFESY+FaKwdooFVNwG4IL6aD
	 6n8pLsKRboAle2np9F2InFCKQPpyOixhqygnENa7WMD2vdrfxlR22torS4+RD33WxH
	 6LZmeXQuN13IUAXDl4RBijFoyOxBKpFR+5AqAYhYkbM1b9ojM5L3W2iy0ldpcVnV4I
	 9/yW9/9e298pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24DBEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 10:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168751458872.25506.1583607153652522202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b3371a0f0871de75377179760ba355ffff198b18f5d1843cc986a812bad558
Date: Fri, 23 Jun 2023 10:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687514588
