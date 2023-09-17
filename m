Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45217A3D
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 01:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1715C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 01:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694912708;
	bh=gxE0oaCuJHJGU/Odwy27JRWpRm4QdnhMeh2WYsvERmw=;
	h=To:Subject:From:Date:From;
	b=Hexhes5kZItwk79twuLxBHs3zh3pUYMBbL+IEZSRqn4gzwfuDl2vTL8NJu7wbIXL9
	 yjKj0zNF8fJVWPpbZfcJFMWQUNcdXaWP3FzMih+VBH35gFg3G8Anvay4NTZocsqeqz
	 02KndCoxuQfb3i5I1g+Bd+fPbtZpeFYpzLPC8QYb0m79nEs21Vw4UUHTwPbRO6HFJd
	 3uAILpk4S63g8rnJdwNnb3J7g3My//EsoOGTMPbypFeYvMcbuCixruTKryf++sppeG
	 5TDY7EVnC6VCOWQFsJy1prPaBdX7UM9Jjeov9oY8s8ZMsuox6fnoEMfKKBysvFMeoC
	 Eq/fDpl2xtiGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF668C2BA1B
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 01:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169491270866.1172.2274811907781269797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978ce8265d585198a636ae3b4a0f43694d3e4bec81afe068a735bdfa9999e758
Date: Sun, 17 Sep 2023 01:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694912708
