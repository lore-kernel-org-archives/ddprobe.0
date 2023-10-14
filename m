Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812FFEADF
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 12:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFexINRj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16EDC433C8
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 12:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697287628;
	bh=U7u1XF5nmKQ8XSUP7t0Jefl038hWXg+gvS8Gvoq4QEQ=;
	h=To:Subject:From:Date:From;
	b=kFexINRjwDbRqvdVdJeZe8FTkxVq6y6XPdCesx5DPC9X6EO7vpJE6OTjzFG32ia3g
	 PdZOHkffvwCrQn6ddOzYOJLoICJEk4jHM7l5bi16aBdsFJQhQ+nnlze1DDEIP6rEjc
	 aDeYUMVUnfhaMoB6gGp85vtxcYlTbKSZw8lzUuJiiXvsUB8rXl95k8XUZaU8wpHlH7
	 1hwmyR4Uk5H5WxsXMu6qyLP2S+hTG7gK7JGXKO+ubbTiel0eSWj1JIMknD5iecwl6J
	 RCoAsB1ApQubL90l7Gum0kzYrV9zPr8rGAAcEahJifBPG1aBE1XhIVgw1KrLSGlHiX
	 v8Vo4O1PmsENA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3847CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 12:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169728762870.23340.5669048297262313882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe18f7be254ab72bbea6edc888155f5e51f443004d3e557ecc446c786bd11cc
Date: Sat, 14 Oct 2023 12:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697287628
