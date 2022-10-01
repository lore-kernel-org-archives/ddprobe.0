Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86011FBA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C51FC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664664653;
	bh=bIYIiXZlIC3iUOXBFayaPK3D7N3RJo8QKhAH+Bcsebs=;
	h=To:Subject:From:Date:From;
	b=q5xeyWoC2DXdSoTJHjWljDfo9Sc/aRL3ox668eXyicj4YIQj3h/F/yhGdoPvPT++s
	 tR3lUSFzVnAGyD8CpU0rhYd6ElZwwlF+6tn6IWUhdAoHVAk3XGW8Sckhu0xgD+IhiH
	 uPphtyP3l1o24Oi63ksgSIMzXFoAvWV8hdzvBnwBjHWMJBq+29CF9b2kGw6+brxJDz
	 gQ8p4vtT+DQk+mCGHIy62ZgxGi8OoY6FqsP4i6GVOYAMiNw/VvhUgYeLw3BI+556ja
	 6GoTcLrm0wP/sMgtyCFGy6xo3oNAQV24zD0ejOw+av18GcO1+wqx+GmT9xJD3tRGGe
	 u30A/mf6URIiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569C4C4332F
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166466465333.31606.5225665013318048910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d55797c46839511a946561fc4f972a18bbc610823145f2e54806bfc53e0ec8a
Date: Sat, 01 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664664653
