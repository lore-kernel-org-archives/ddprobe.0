Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D85E6139E
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77754C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668523254;
	bh=4lX3Nxms1ls/jk4qUPUXm0EEmnZh0aKYg2aMHILuP0c=;
	h=To:Subject:From:Date:From;
	b=BJmK/wz9BrJ0vtGNSE1y5EL5FH3OoSZPTmbix2epdfLWQV0/zXQZWu/RjndRy/Gyj
	 SqmtJv8zIn6cTRWY3lkkqQfw9jJ7kEOi+fMn8c3C7I3UClBAy6gkqgdTFM93uLAaML
	 hiL0w3QJATbVF3JyJiLtFTbC+zf6emht96qF6RTKrXlJBK44070kSB11prGD7JJY8I
	 6BF/Jng97isxUqNte1UERq+Ftw8S2C6xlCpamEwc7kkkZE3kXLIw0hC1I4NvZSbdc+
	 h5ZRncacZ2tA09UA9tIyieQxHZyF37Ijk8bTWVm4iJStoaQQ9hMGDpkBg9fyzHdL4L
	 RwgN+nFMukhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 627E1C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852325439.28488.205695763084979719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03e942a811e02d01975fee9a4e1a12dd04896ff77908265d3e00642eebdab5a
Date: Tue, 15 Nov 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668523254
