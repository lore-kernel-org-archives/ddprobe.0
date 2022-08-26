Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF3844C74
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E8F5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661542252;
	bh=cNU5CcOdY4WfOsFMoMREZhVJClUhqNEkK5brQYqm9aU=;
	h=To:Subject:From:Date:From;
	b=JSj7c0wY0XvtjDFjc0drEQ2yL2tNc6fgr5MNRIm5lm5BT6oClAqPs9e31LkUqNODv
	 GtoxoZwusDvUH6JMi20RntPJqVD3CB2uzhAe/Uglq05xhMQn6o00tOMKbIGvqsZ6TG
	 Ba1cVZCPNFJaHvJBJp1kPEYX100CeUwd0kpP81aN8Hz5Y/DKIpsY8fp8x+vSLwnbnj
	 kJlivQovtopcJzc3B9Y1eJrL6oQh/ytHUU3PGJbP85zqDa59mhOADwbisGoiE6obKD
	 SPE+2/xJQ+w9PZKrrFWMqcGbM2ZB5XSuUTdr2nrBR8/6IsS+jmCqRrsMpsDXehA1tX
	 yb3PZyJxjE5/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68C53ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 19:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166154225241.6996.7754162728332184723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef16d565a39b2326579a67f800f426d137a6cd9fa8808bd4ebcf874d61b787bc
Date: Fri, 26 Aug 2022 19:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661542252
