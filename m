Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3300928E8
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 10:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2763C433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675679765;
	bh=0YGtmKbkc0t7D7TZWUCLIwqWv1pY95/5cBfiBhuvc1A=;
	h=To:Subject:From:Date:From;
	b=PqFkO9XAabA1swshlnPQa20i2w3N4OaLHK45+Wf1xSoGP0sDpJ0Km31iosy7xlKgL
	 /f9fBVAfjaw6XrdzA1I62mKEQ88s0bwaN+CLryUQ7mxOrRn4e/C4ts7NKteDwtgWaZ
	 bbNXT9Y5LQlvMVYjfGqwFCqlfs1OGZQ6PgaR14TtbCVhjd2NQufnOaD0E61xFySeFC
	 Mm88gC1O0eFaijp0gCODnnjG0o7G1rv+UYycuYel8zNLfYeioXa6ml7QHIFn7AjlCG
	 U25szPjl96kXKc02Meiy5d7HcKbiBpibBQ7uP3KGp10LKOnQzBMrPJPoGM8SDAlDqj
	 Bx5C7UOxo+QOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFEE2C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 10:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167567976577.4578.6879328665775093317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28d78cb16701ce3afd5aae39b1bc0fbfd62d5bcc3f197929ff83473d6a805b35
Date: Mon, 06 Feb 2023 10:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675679765
