Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABAB11C9D
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDBFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693231448;
	bh=l6eLMU2FzXUfgCsKOHgNfhkp+NzFQ0bzpvcaHsAwQm8=;
	h=To:Subject:From:Date:From;
	b=rjYxnOofjR4GWYazDLzo8+ZkfEs4jKzD4CI7qqQ3XG1Z0drtESo1tQ4BERftswpUQ
	 qKk11UtogaHba22CNJiwf0fyFN2vpUfVQXBkRA/R+A1Wvz6A8W9mpNS1WvUOzXRh3b
	 p9qwB3nCUh9tFygnOT/kzmOtm3OVVZ6uKyNl7lp1HCI4ar/7MmzRN+wXfa/a780l3w
	 h/c6JmhKRePUUKk4PqhVNJJohiDrLjwAD0C1i94YktaZRYuOJKEmYJ135Sf5efsJe7
	 5y3c86988UwJfrpgb5fSjm18QQNGXKNYuOa50cK14QCUFdrqy7Hqpv6Z//WlYVgnsc
	 TeR66jAlaIlrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD689C83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169323144870.21766.16936853023613571415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e396c0d4c81e6c9c401dcb6bbfaaf6fc3ad81096c163e059c3e740010758a0bc
Date: Mon, 28 Aug 2023 14:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693231448
