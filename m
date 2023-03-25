Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA820EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0699BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679741526;
	bh=kqSy7UMQKt5epVdXyAi4zPiFZYCky1OxZq8Z1feuCEA=;
	h=To:Subject:From:Date:From;
	b=CZspddV7K/aVhxUcCvFu9u+uBnqKtwyubBYraOcO4tASbNChfM9rjbwg7ybxLYT5O
	 XCRt7wv/RWnZwiEHYTavtGnMr9HouMhFnEpP2Xuyupqve/3s8D/tPnbGAkgKduzGne
	 V3GvXBqnMG4Zh+D7/SzppPJClnUI1BwZxMPgjEU3m9MLoLch+8ZQGwSYl5K/gSI2b7
	 dp6A6PNdNlsafpObv0Q7RT1PwNGoqOWuAmQGv2RycoB+h5veOyOEDZDbG0aXhd6YAQ
	 3sDOkUADfkZYwxSP5ublrYwTbZOzr1cLvuoAN25cMknKdZcf+TF2tju0YmQ/8zHOUk
	 yaL6Vc4M3liHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC18CC6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 10:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167974152578.28935.4951922000388343052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5daf4ebeede47aaad3c0699ac0f67b3e14d97a5f5fccbcd3f180e28882e31c53
Date: Sat, 25 Mar 2023 10:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679741525
