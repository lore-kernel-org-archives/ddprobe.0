Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B9619930
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 17:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0920C4339B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 17:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686246785;
	bh=Bg5h0ty9DYkBKLO47OIaVMUBCeiBLRq/Wv5drJsNfQE=;
	h=To:Subject:From:Date:From;
	b=Yf/OHI4qIgW8H4HycbhwXvCJRilUzAS4YwwSvQFTyTfczvA+a05O62tkf2TiDuwQT
	 g9w49ptxGYeViE6WL23lfCsfCKzgjppqbwckeUbDj4LLFmbfNBPe+iwdFumsHTdMeR
	 bUET7zaEUSzmEsWn+KvQGHn7g+gTTfhK9flUaIz5cvrTFLI3ky1UQkS6XlDaGqCM8N
	 zjjUTqWmwZv2poqqvy7lk/sY8mDpKzTTPI7d9zOXYBuDdvVh0Cli+0n/dRY4Bg7cz3
	 yqydiBBTk/zB8pPQ13j3DB/bI/LWGBKlX6Vas9fes2WqJnG4yEfoB6jHVTtgGkDMWd
	 Mh5S8odaClGmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FB8C7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 17:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168624678580.31060.15035577015123580675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad12bed616c255cf393b4ac158625c42d7895216b317e3b5096eb36e19675db
Date: Thu, 08 Jun 2023 17:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686246785
