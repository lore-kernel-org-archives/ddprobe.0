Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A6F14ABE
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD07DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689023828;
	bh=AlbzN+DrLzyMj+fWBakukGgLw1+5NiBz/Qw9HD+soxA=;
	h=To:Subject:From:Date:From;
	b=GvPxUAsyKVcxXoawDo/QXLQutlb3nM0kRxpE5Rbf0Q+2Nq6XK4z9U8O5+CIzwkCR5
	 C1s82BF+YePxb3i7/P2IbycEBJZNOjrJLLZYqPSZzKGtpmoWtqt7h1BNib4BfW3LbU
	 APOtXsB/Nxa7JW2K0ZmbgYctd7pB2GS11OZ89btsM/l9fc40KsRIPhnJz6tOEoDK7Z
	 Rq/oYDMpX4SClaA2aFSVV0v/Dt8FZe/t65VqZWRBZ/pYYNfCCeLumYnYHWKezD2SPl
	 8+rSZmAp//YmPRF9v7Fb5EGXwfBaOuRMp6eVvbHxi8cQc3kEv65Hb2UUWDC3agRed9
	 7gtdULhGrLPLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F5BEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 21:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168902382867.4459.7836799361236625694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 342ff1d5b4a26299d9cc680afc281f14ef10b2f0921db91a42fe54c23ade0afc
Date: Mon, 10 Jul 2023 21:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689023828
