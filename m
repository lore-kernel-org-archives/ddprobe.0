Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92A42154B4
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C78C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687275728;
	bh=CoboUMUTE9XzF4G+o6nMIxRHmcT8k6k6k6tsUcd6eyc=;
	h=To:Subject:From:Date:From;
	b=EQAFlEpDtATIktyOixshq+58M6g3TKtuzoHhiRkPL+E2i34N+YtJyfXeOnc+dH+lj
	 yLywqtj+e/E5B/m3TMULlIlxlRZ41IhlzLFXd1HNaDEYTsl2dpu4lSs9BctSJJUGco
	 Q30IiMpZQRTpQBMZMNItqDlyAS3Z5TMirccSJFqSURa82ze71rlLIiNyNwTsA6VRWz
	 iC8MdFRLKQKZSX+T71XsE5I4Q5aMNXipa2g/mCqb4qBTwWqsHT2SyhZ+Bjijid+pEE
	 DCzpG2R2Iw+tx4gTBWKC2cCTmUbTLrNFO65oS3MBXYGixX2jl7Va/35nW+9dNhV8Yg
	 WqM2a3AWj3FAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9957EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 15:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168727572879.31498.316693447039720282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1940d2eceae25f83f3cc6f5e91a94320cf7674b5f0cd196d679cdcdc56888c86
Date: Tue, 20 Jun 2023 15:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687275728
