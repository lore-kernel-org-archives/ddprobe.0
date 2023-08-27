Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A9E7EE
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 15:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77DEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 15:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693150448;
	bh=GRCiF+WRCo7POObMzXxLxYgPYCIBff8f7ye2b2rVwzI=;
	h=To:Subject:From:Date:From;
	b=WDZmTBVx2viG2Tz8p05ju+u+VEUczN21QpMnQPlmAGIyE9ZBCv2M4fne1VW70ZdW7
	 k85Qq/+Fee9KbrOFMyVXXALLLibNW9A0kxnurVCps/kxuG76RSu1wLd+LptDJI8uLc
	 FioLRPjQXWDbsyyjnZTdQFhL7m7P15AfcFNqu5MdEkXNqDbpSalyEvZseL/dlTJ2WM
	 ELjtIOIBiyFPci2vyBfbIxNygluX3NP4a7VAmkwPAUS+HalXkTPKdMVDeO+NFTdCFl
	 AHLLjWbe7Pn53rukN+JkDnliRhdBrSLHkDn6Zz38vKcr+jSd4wWCwHOOKLH9OeKxOm
	 PQ6x5Ig72/rEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73D0C83F10
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 15:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169315044867.11058.18065730873921902761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6719559b529e46a3c84eb02ef61a3b136ecc5e1624fc00fb0088b371a981055
Date: Sun, 27 Aug 2023 15:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693150448
