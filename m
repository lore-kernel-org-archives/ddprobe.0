Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFC2C2C0
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E620CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 23:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680133745;
	bh=kuwRYSaOT33qqI1QCkLFqfeuEuLiEERtxqYwI+2Yvg4=;
	h=To:Subject:From:Date:From;
	b=Tcq33RtnIj+q4au6rr7HHIfbRIO2Lx0Btkq/P2mWG0U6Oqi+AzZZ4WQ1tv9nNCYxD
	 473Vm8RujthjtYgWPzpHJETMHAboZC5NLZMimM3/zMzDOX5Dp3tRO+k1fFGPG+6Vro
	 NM5mg/V6HnLeazCZGm1z7keoh3ubP+S6t8tPo0ygnG7HbKtzvNhGwxcRKVf7zBzbvs
	 VjFVybSyBersT0OGEDswlYNOlKI/JXYEmIreBUZ87LMx1CC29hwMLIhcl7dgr6hdQO
	 HNgWMlqMwMi260qBhZoRAKz+OLnsfQgHdD+ZpgQcFN4HpEOx377uLdrKCvcLir4t5v
	 VtrGlu4PGButw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4A8C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 23:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168013374581.20453.11806114136718596624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e45315ec5c5b14110c7b83098fcd6c755eed6069376f2838d7ef8a78f4f6073
Date: Wed, 29 Mar 2023 23:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680133745
