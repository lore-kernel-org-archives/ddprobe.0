Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767A2199A6
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 22:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1992C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 22:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696112768;
	bh=Uho6vXh/7dAOwjrsk5RLAsjLj7ZvT1Fl6oTX09dHLNM=;
	h=To:Subject:From:Date:From;
	b=oyzlS96Lex7KJpwmx5PE/uF0kStethA6V0HuNqdvp8aoyV3zWyKowXlDcEjTU1qal
	 BK5bWuL91bIn/mz2SkM0j9QFUBiRtuKM8WwTnYu7UIF5CsdGEEqmXvFoTXaAV8Hp51
	 yj2l4zGp/Gh+4P0lEBor25VhBKTm+gaG9O89lmfnWI8rF95ONWRT7dKa3FZkZYx9Um
	 N9HyHq6jiFL0362uKSrcMCFNZwoK7GXg+03Mkm9EelINi1X6QTye7yPVc1qZv2D6Vm
	 jwO7D1rbFLMbEAKseqxwOElKl6zLtqcAxQQvUOqKLHLlwidjPowntMO5FIdKlp6caC
	 PIAjrlFJ99T7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15E1E748E6
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 22:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169611276871.658.11022767645269760806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4317805f7184f9984612f8365de47cab461966fd6c56a6d459c806e16136a3
Date: Sat, 30 Sep 2023 22:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696112768
