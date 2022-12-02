Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FCE10EB
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 709E1C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669945254;
	bh=m2foTCppp9d/JUm1P0TAb18AG1oiSPKNJQk/NQdBVkQ=;
	h=To:Subject:From:Date:From;
	b=cHxEwzGLC/bjpIm7RqGm2v3rYDfv3V+WXSaRsxb9vQYIYy31kHlHLJDAdfzwNLoKS
	 /71kjQfxdrC0k+XNT1gcSblYKwe3EdNt5tOMNYyBC/q+Bz7Mtr1ech1ZQZFw41J4Vj
	 fRm9/2DE/Kn66c7OztMLWzAgoQ13jEhYGaPk1+0ORJOBvSXpkxcnBcD2AqNIc8JbS0
	 ORGu4X4ofy1RVBfro08KdarrNYzvztBwoipwmhZVecafNxob2gOAT121Ssfmfn/5jo
	 6iHTzVqTosoJjS7PTRnA/PkGdeLFMeGIToOwaQ1G0pS0msGRWcHFiPgqInSmaHF3ZZ
	 FUlklqvbvnApw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5473DC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166994525433.29523.3786749168379821215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7921722727420e85e8576d9a1a41f460012654e60c38bd999b2173b0cc9d423
Date: Fri, 02 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669945254
