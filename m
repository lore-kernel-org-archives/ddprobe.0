Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9994C86
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB9BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664313653;
	bh=9XvWbSy5ZpwxGYnjC6Q3QXqMz3BgUU9LFY/QazYvmIQ=;
	h=To:Subject:From:Date:From;
	b=X0DOnn5nYdxPn8zImLlH7ETuf2jD3irkEflcY8T4KGWuZX8lZyKX/wW3H4fRMtm50
	 u/6UcZCUhaoAb9X6qr7GAThs3B5R9bfiDv5j8ik8hd/mRuyR9TJcHUMOrBBMnHkMo1
	 Vqbdn76rdSNxy/ntLuSwkKVCaarjG6ZAQDIKUDQmfeMyT8HtcbND7f8Le6nxV9AQ2m
	 vHJ862sCRIBsYab8vKNCDLQ8G7aNL11FrbWpJRQtY/oHwAaB7Zl+dF5xwGp6YMnNQM
	 jGdVp7CkisqoNhyMdhBiXGJwDFyZsxF+b5q/wDr+vtFPldxLjZZzWs4+iPck+w3pu4
	 B7K81hoVMsT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BE3EC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166431365334.8387.5724489238977916459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98924356bb55882eb6bb784ad67c3b76a7d99a926beb1973c3772eb80088f2fc
Date: Tue, 27 Sep 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664313653
