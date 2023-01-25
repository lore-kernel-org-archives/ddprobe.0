Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C6410ED
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46C0C433EF
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674617585;
	bh=rg+0ekcJQDLdQU4C1pQ5URLHBq0eb9eDjnzWxoUbE3M=;
	h=To:Subject:From:Date:From;
	b=IldaNur/yk+8O6tybu9afrogYyv8ll0o7VX08bx+IRPiTcHQg/zK32j9l1OUGrJ7u
	 PF5V8Pzp8v12ehTVkSIGWXKdUIUGm3kk74zNmX308q6LGU0RchtXiKC3Yy0xu9w+Or
	 Ta+rxgzTdGxl+wLoTkP4OeQv2N+coEbfU083ffTeAyAmxPrCy0QnRqx8CtdXKiOdOq
	 5uvfmgvCY6jmTBzm9ZINEiqNjHuDQ1XsQ1TxP2uMbdL7eeqq+G1cBP+8z8GRaRS14G
	 tqNgVkCBBxfwD83oVUMU+bX0hnDzvJRgqBc2rqdKY9EpQA9B5O6nmHhtuyar/+Jn03
	 o0dlJPoCAx5EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8531C27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 03:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167461758573.24972.18348766222561504758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d4de63a909dafd4a0f302a951725a0b2f127528a611dd63d7d4084088d382e1
Date: Wed, 25 Jan 2023 03:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674617585
