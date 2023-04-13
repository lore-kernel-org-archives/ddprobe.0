Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC127E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 08:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40EBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 08:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681374425;
	bh=Wy/3X42n/Ou4twsvGlwuaNMiPf5iW8ZjlmlbKAYP3fM=;
	h=To:Subject:From:Date:From;
	b=mBRqjEyKjG/X+n3b8Gip38CK+L8jOJ9AThqCp2nLhB5v5lnLWSu1TXNL0mIBnHmQm
	 7unZVE4EC5SUT497OJ1nccbfcPSx9skltyl+dFnhXXEJrHiaO3xzfeTz61iUwV8eOJ
	 /+c7hKUNHg/7JH8LuH2/5/liX0gysyu9Ohlnl3lY79BVEd5Igs0hc4blpmXsBKcF25
	 5MybCPToZSAPXr5o1Uwosd09Lpp9B7iN6/9pgdyQEuvgY2nCr0i5r+ktgGAlnKbBan
	 CMCh70WqPSJ+Gqv5C2dbrHhmOOe+uWx8iFNhW/Rs0RwSNbA0Dvax7Mve/SuUru63vK
	 A6id2Lg2vqlFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F9DC77B6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 08:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168137442579.19845.14706670288513464721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93476c987605b519b130d278dc25776719e4132908836c29488f77db413566ab
Date: Thu, 13 Apr 2023 08:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681374425
