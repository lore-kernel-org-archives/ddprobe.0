Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C47865C
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 06:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZqgrzgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C53EFC433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 06:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696919828;
	bh=7NoZ0PuuHmmuAy6/9qCSxtU/Oq0ViWg7xjVHKr1PPC0=;
	h=To:Subject:From:Date:From;
	b=dZqgrzgdQt9/whEVmwthAdswBlE5AUGsgxRvHg6uCpGL7I6fz5NlKQS6/YmT916AN
	 cdoOqstY5+WUHCZnTo61e8XTYdnE2bHZzLnqFihypPu62YKs2+ss89qIULAgX1wpII
	 F98zyy0Uv9HduIOpmTip8vFZNqyhB0nCkHEmmK+65cd51fpfZ0ZOuaQc9TCDUP3UGr
	 cgscaAJyv7jX+QiuBqsfqF+W2uClCdNYhmk+6UZL5tE8A/WyF51MPI5xPUu6YQ90CH
	 6Ne7v66z1KTMCRmvgqfxxYRrAGjQokLfTtqzFj+xnnQxlt9AairgjHaLcHKbUrLOWy
	 FNbkm9XMpriNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD110CD68F1
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 06:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691982869.20189.12108190263448840237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28f613de58a96ff0de057f44cd4dd31e6e9944bd1b1804b49e741c07d58ebfb
Date: Tue, 10 Oct 2023 06:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696919828
