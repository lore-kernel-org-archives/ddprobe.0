Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869FF125CC
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 07:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 376A1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 07:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685433126;
	bh=j07sSAVYYVOb7HGEhwy2vJ46Q4WYGUL5I8stK+bQ4MM=;
	h=To:Subject:From:Date:From;
	b=MvNwp3hQ1kaDGadxCVSsHfdwkLjff49Zimaap+85Jx19cqoLkCIk54YI+KYwmVyHG
	 tiQF8reTn2nFfID89bvr43EF1YQWRIWo00ebWfUx50QIyvQ4BU6u9xkspyhKKqu3Q8
	 Zg6mqxzBc8DZbup535mbGG/yCJJu7idVfXl0C5QAJvEr8hNFAAf0HZMQDzavHq3uh8
	 4WQtkyOHVytKDxCW35Ps1vXrtGpyUjuf9wld6NUYU7VkC4j9+yi2V9TwQ1YLob1a2g
	 3lEuhsGRcnptqkAWao5W8Wbkw1P2yrXIudvGKvcqb7HATZS5E8Ddk8hQojx7WcbOeX
	 YKIvJ2OhhSRvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13436C7EE23
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 07:52:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168543312606.4348.8287480742411313697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85f60dd03133795b904fa25e58a40248ad5fbb19c2b01aecc13f269f7bdecb0
Date: Tue, 30 May 2023 07:52:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685433126
