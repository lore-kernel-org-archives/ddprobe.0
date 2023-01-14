Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65A57E6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1E7C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673665287;
	bh=mqccwfe/+cRcYi55GXZGKMRkSjQlXuKl7hpoqmZ+eu8=;
	h=To:Subject:From:Date:From;
	b=s9hQkzJF7furCkbv84sUbau7ZEeZIwcshIUjnTHICU7VhV6cXPbHEKsqerHyEgkSg
	 EF78+w5iiO9AdQsW1M04AMtZu0kpIDxNP0ruPaxbz/QdZOj5tFzZcjBVWRawgZaT4K
	 +zQR9XY62MTcz8H0fcYD2NPYcpGqrZ++53tm2mgghqCCrYdYH9gKXSzXqjYakk67tM
	 XkmvZNGaxdWz620AbMe0c8HVuwJLp+V9hhSuS8aamo3Jniq/3Ms2AMqh0H+OC5ZbjF
	 WwGT67XV6gYVkWYm/Rpnumr7hA3TskljuwE5lxJxpM3Xw/u2Rsg/BDXpzePYu3oq5S
	 XcOmBJ4hBOk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75120C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366528746.9316.14794200994223619586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b242f5bb1785acda0bb561518ed875985d740368b641f2a7ae021405bd12815b
Date: Sat, 14 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673665287
