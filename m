Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D77179C5
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am74PiQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D4F9C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697895496;
	bh=YFG+A8AoI/M1OsGrimcHxfPNFij1GZKsf4aXypr4sqY=;
	h=To:Subject:From:Date:From;
	b=Am74PiQwwVn6hG0VUL40wswdDnZMiiS6Ovlc1pAXsxp+qvPUuKOjHfYV8gfvA+8oD
	 +sGuRzbRrVk4EKtfnsA0wAV9UaZhAD5UQsaowSyABv/3W157INQ60V+kUOrs4Fivui
	 u+WLN/KiCsjA2dwhhfu5PCc+KZCt6OwLx4axeG8hb37u4sfhDEAZ10eblwcbyZ/w/Y
	 YI8RtxVF8gnLKZnQlHCERAO/NjxgOCzajkTE8WrdHyXsyn2zj6ClV8GxzkiRURRDuU
	 Rv6+qpICMKp0YkbsvXKAlpaG49eoByKskOZTnLLFyLVGDxxe0EnNaIx/CORM6b2vhB
	 i3Z+Eo8vbCqlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70385C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169789549645.21784.8038293380715828454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1efeba198fa8c843cf371d34d602a11935b0a71ce95032468680b5ee096e3beb
Date: Sat, 21 Oct 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697895496
