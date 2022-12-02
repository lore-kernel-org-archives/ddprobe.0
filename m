Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ACD2FB2
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C63DC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669989654;
	bh=pkF1F7GEoQhnf+hxIDeGLs8ztFsT6SA/uUUv7CBx5mc=;
	h=To:Subject:From:Date:From;
	b=ZRG9M1otOOb0pyU0hGwF/cNDhvczndlXV6PlgEon7E4laygUBcgeNkXFo01Z33kxL
	 o3FWfbmr6tyQw3LtA3Vw8EBuyW8hNce0+J8ns1rWLwjgS2qsW4snWDBYC7oXk7webl
	 HtxhAyybrQfG9PDS3jIXKi9POdE8VwIDA76QNnqaS8Vwm+GktN4ndAZsKxsG1K1uyL
	 +N+2ljQyexm3AczXdD3Jl+fxyjGT5oueK7+iQruq2i/+BY3d3MFZL6MBz/XUuLpa1Z
	 DMl9O9s5KndLM7uj6V6+gi6L94+hi+uts7zbfP+j4KFKDjSJqRG0D4xFwmSlSl1EVC
	 iUnaKu+iQfETw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82001C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166998965448.29388.15135105683879091558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f21190c9b17dca3faa0a4121dce713ec2b2429b6f4ba58cbfc4b3122a5d375b
Date: Fri, 02 Dec 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669989654
