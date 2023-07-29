Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC463D60
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 15:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8321C433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 15:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690644728;
	bh=LmEnKqb5UQZzbl7mOn+AMEskJXQABaPZnST9oWXb1zo=;
	h=To:Subject:From:Date:From;
	b=YeAvOj9Y/LsnU8D66ZFu2QstUcw36De++6HpGAkD1zLc13NpGhrDyByK9pcA1/Qpp
	 kNkYtJ6iz/0X6pHyID2C6Dq3iESgq/jkiFMGAnO/cD3ysfE0OxgJ+R0AJHiMUevpTV
	 cFTR3HeHaTZw8bnScPcvqU2Xy3bQs7AV2GT4wqt3mo86TBc6bbXzqy2NssIZ83j6B0
	 4MaKP2F3mvfCj2ekhTgbG8kMEeZKcWx+lvri3zNknukGBRawaG74REdKZDiPHAkXCS
	 B4ScKBgntl1x+b0acwbDPxu5Ybu5NNcqgJedY4Z6C+KZ1zLSL9zczCn2yu8tXjB24v
	 rynVFFwKI2AiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDDBC00528
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 15:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169064472877.26870.2646710829432244920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e2404393d88b31dbd754bfbd5b6ff811d7dfffac67cb2efc2bf9ff0b12b15c0
Date: Sat, 29 Jul 2023 15:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690644728
