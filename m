Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD780A47
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 02:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773C1C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 02:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667527854;
	bh=Mg6pGs/0YvqXNigsBlk3Eq4kah+Y49UufU0AuQ6lLCM=;
	h=To:Subject:From:Date:From;
	b=YjLh8gV9N+4YDZlPITDb+4u1+2SHPjO8l7rL1iUC/v6+WO7G7hwdy/54jrdt+ckKL
	 jpThcsFufhQsrFi0RSVWXdD3Gm4XkL12Q4K1R4sLv/qWZhV0ZOUgRw809/lxMsaIFJ
	 GMCUBrEFNBR4iDayRqfzyZKpXwsRgX3jGu5tNtKoErMRjx6B1KJG67aoI1an8BhhRf
	 i8qaH3OTHZSSXMAmscVY+Lp3lgRp4rdvW2pzUmAXiRK+l5lTYVxb8tOGNlIL2zHzO7
	 XVsIQkvJ65VVUhp8pJheJhf7RlmGbtVAQETZc9Dft8iDzJnhB6dtQek3n0Wfd6HuvJ
	 B0PiwEwQ+s1Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FB1C4332F
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 02:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752785435.9366.9358092002900346590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26a386cf4a22173f1b3fad3c6a6725c2b50daa2e40c9b897e1967b5d50e0f77
Date: Fri, 04 Nov 2022 02:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667527854
