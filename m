Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E92430F9D
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRGhe+lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8312BC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701717496;
	bh=P8UrzI5YQqRVZOURn4w2UID9FmyAmTgG31M5MN/F/aI=;
	h=To:Subject:From:Date:From;
	b=hRGhe+lTwnq27pehq1CBh5nm5e9NgB+p3TWA3HgbW1RkQSPZ5lAQa6zljhBfIgUna
	 L96hulO8iFuka4n1OjDA+rYmMCXUt2JU1ApLZoxOiEdg4OsML2isFBy/W8vcmSUebM
	 uvrsI4IF5qpCUuSSMQVMqm/WFbP2PeDwHDkd1HtFTx4jwwKL12+FR+z6PQWsVxtj4S
	 /iP8QBcXtmCXaJJQMnqBJ7IeD5cBK7gZQ0sMbXuMJQkjA8R/Wdn/L+oisIaLyucXgj
	 TDmxUhbtRdPyU/BeFVjUaYR3tnhUCCIEy1tN84e7K65dqhJulAD6wsla8w1/0F+SuT
	 GeCDo3iH3rZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B179C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170171749643.12752.4016487563472305126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b20cbceaaa85ec388068c8f0df6eef8b70dfee8a5c41842a96b7077fb01811d
Date: Mon, 04 Dec 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701717496
