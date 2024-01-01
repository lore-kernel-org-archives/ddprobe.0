Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA301370
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/CGJrS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F427C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704091096;
	bh=X+Jscj21/aS52WTZHcd3Nea3SC0C8hM/jqNNyqhVq64=;
	h=To:Subject:From:Date:From;
	b=Y/CGJrS/1n90G86EUGcuaaR56DNf2/vwIQxA+SJkQyzUYOgiUaChJNqjjzKNnDvVg
	 apL2jji0SVns/I54haZzfqGpKbt8c//einP3M3veEldALYPTyj03anMkeBpQ6j1sTR
	 zl1Jl8Dq17Nbpy8FfnO1WKrQTy9FfTeOzABHhhT7A1c/C7N+HSUTMM76VoV0OndFeV
	 Mf5Jlw5qZV7b8D/apPxS2PleLyJo66sfAJ0Ymeu8QsuXcegJI1+tn7joKnRhQ1at14
	 nfkkZEQEKyywdhI/YahTE87Zfv6UZ8JgcfrpmwiiRG6H9FoNLQlL5QF2uxuC73Lqg8
	 hlSZD6/GXlMNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81EFDC4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170409109648.468.9063471346903118206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583bb2eed935fc9c0ae19c842144e0b65498e260f250c67aa8da5e481ab33e18
Date: Mon, 01 Jan 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704091096
