Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F4C1C05
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD4AC433F1
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670811087;
	bh=/TqGSAcNnsHttsa7FZRjJgkzWRZB8sQW2+Zq5AJoTQ4=;
	h=To:Subject:From:Date:From;
	b=gPNSV6oe+X5VKfGL6UCLecYM8dtqWMbqg/K3sNvb0yZdKgdcdy3IyqbxSbtl2nsE4
	 WPzN8UtsJ33E1W+YuafTH5eK2gFkD/fHg1CJOr2QYRFweK/3Lmuv528I8r6t9wwklk
	 KT6AiAYJYz6xGaDEnROT9MD0gg5uzIkJTENqGohFhKiaWhvw2wFOt8kQQmK/sH7Aie
	 x4YBDOtPke3VwlXOWcmNts2xO34z499hZiAiNC0Hu3LTm/67zGh3q53G5wTUFvJcVc
	 I6Wd9JMvYxPEqmtO5YWYGjDuhcmL9nqrhyqA2F4TlF5UyWWASBAF1tIVNfJfrUMuSr
	 r/f0mjhlUGrvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66530C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167081108741.2485.9098008864750048733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf7b210e499e224a8d15f1e7c9c65b75e122173cc152b8718e26b8532ada250
Date: Mon, 12 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670811087
