Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75E817E2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C6F0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671886887;
	bh=VjFaTtLmLIwKs+d85h7u18nCMEQ1kb4xAN+q372FP/U=;
	h=To:Subject:From:Date:From;
	b=Fb+DVnwNSN5mxRsy9K9ExCxnGGwLnBLLlkfsQiFl2YLzUKm1qRaX1JDnvxWDHHlnk
	 SRUCJEez9OuUEup91Z90Msn0hZSBaQfCSdZFRcjsgkB5EI0LA3zavjbmBPUVM4Q4xV
	 rfM8RdXQMp9uMTAu5Mtwa65WpcI3PsEc/3UTFibRwUIFKN7SmBxuzHx6OObsCv7Hvk
	 2RcJwWTBKJR9zzKJDUNZlp+ohu+62IgcCIkXQk3yHIEXyaEt7F0FbUR0EEdry4mE4l
	 k4lSfOuvDTM8JAshFsBS0ZLNfkvQCJDK+lmK490i7c3X6gSobzVn++A1KoWXn6/bm0
	 wygcvodudObZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DFCAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188688741.3823.16104524232065262412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da4dc09181071cedc21c3f4ba17ce33b942b20d9dfd67a86ff0af6fc1b1ecc6
Date: Sat, 24 Dec 2022 13:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671886887
