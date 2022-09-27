Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9407E1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67C00C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664273453;
	bh=ACeUIPRYcdGMwvxpW89wwzdJddfw/mDI3ay+1153w8M=;
	h=To:Subject:From:Date:From;
	b=bxsszI9qTmT2ZwzqgzOmrg/8MQPFD+oAKPFG0daXHqSSHiUZe9hACfRdHjpdshaWl
	 PGlinzX/KnCbGC6eKU2+lWrrbXxN2PCQb5LYjQEZ0+JirnZaF38skt1s4x+/VHl/3L
	 dK04wj/ml4jWyEfHQnrNrc/DVRngKYqIR5Q/JedimOYSYevBYle/PGtI3nAGnzFYNm
	 bhLg+jTI2jw65qHYnCgcd88xHxNBvsl+0ZiTtXBeFbJe/2PeBJGP1efr4af4veNcIM
	 KTp0DB1tA+Hjt7vl4Xhb4GmZcJc8bVcWvJLM/JWzx6He5T/aSwyiFYvgVFaSduV4m4
	 JqyvRVzZGTWfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F919C6FA83
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166427345331.20130.11828425441369746211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4c6640a040a8fbd6625cf69d67a38d8de1c60204907ab16a3d322e46e19c46
Date: Tue, 27 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664273453
