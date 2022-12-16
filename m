Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2EEC8C08
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79929C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671234687;
	bh=rR2DpWH2AdG/Ff6hKKuzxnxP8hoRgzIhsoLKewTcd2I=;
	h=To:Subject:From:Date:From;
	b=SYmpZYeMLa0SIwdi41bU85nPuTljwCrmI75Haqcg/dQreGNhGTUbforIRZzDElE28
	 5FifxrC9S8l8FLMHji6sey2eVV0kUChogk+yV7JJUa0IhsHxM+FpIhCdjrEAK0sxpi
	 jGmtByOWjE00YeMQaL907vNHusXdq88xFblHm1hc4JVrs0lo7/j2LYiqThdL4cTLof
	 zz7cgMaPOZ3iC7kRdmTq4mgtaYu2w22SvnRQ3YKBZrraDa4eIYu4mIYHqagtkPuATv
	 8HR39qFKh7oJuDWOwM8Dnd43mBkSQ0hvN/p7U/Gk775HRMGqxaQcVRK1jGwYdjocpm
	 R/BGEl5s9Y6Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E86AC3DA6E
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167123468737.5830.4212871242789077476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ead07342012bd0fe30ad311dedc8fc7a8c0eb81c1506564ecbc2a0cd2ce6a9e
Date: Fri, 16 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671234687
