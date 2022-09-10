Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD294EA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E38CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662801653;
	bh=7gBQZdNJMyEhlL/YGlbVJ7EK46c33X/MT8nM0p03RzQ=;
	h=To:Subject:From:Date:From;
	b=CfdIRWZdgvl30P7SNymcf2Ca2fCQhsMhMQMdLjiaWLhLXpmh56Ys72HHRo1YfCS+S
	 nnCjcC14g3JExkzv4ZfGC1do9KywLLJgLxUvVUTI/bb1vAcYgu2qUG60dHGO3SIR0F
	 IO8M/S7zqQdjdxTjFqKlIGBXWGoap7XYXri/J0P55d2oOER1742uTw1onpIW+8GORn
	 MiOj0VRQa8V1iYuNxZeMqu3pZVk8deuqNBrUKBzyUr003KayRxaP4xqOfu8ZfBE//P
	 +vahqK/6jedJbifFJxIM4XHVdxpwA1rdP9H5BI/4EeZGR+a7h/KVwMhUJ9WH4jfm94
	 BOMyWVh3C7XTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536D5C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280165333.3166.9446273626584341907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0815e0c3e2e735b7781eaa06ef168a91a8bd7f99a2755c60f8547f58a89e772a
Date: Sat, 10 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662801653
