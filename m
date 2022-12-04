Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14182900
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FE66C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670155254;
	bh=0R97rl14n/LBkXZKw+J/x5TjUNXKksEuD6UyOwnRjXM=;
	h=To:Subject:From:Date:From;
	b=HetQ3ORiuRlY6u9vA/aW2omN7BKxxNGyNGjJ2jp6COmiXaKaabL/93sh3luEH9poo
	 8xwXge6Lfsafhf6PifaeS85ptcrux/lQtDxb6s9dHsfdQtbZ1ZS7GaBFPUERqK4v9G
	 LHysOqE4khmdkw4tZ1NhlOAfs/64kirOvJqR9f1ZpFRd2jJrQix9UygRjingVQGhg8
	 Pb28ryfpa7u3V6zwXwWXXk5vNRac0SPykt7QahAZswhgjQEhbcyjFnuGLq4AIOx/BS
	 leilP1qnGFG6aV+jYc7qz3Yqzk/myrxZR9Ntx2KLBC6nTa5l/MeAqAzybCGqq3apfI
	 zjIyYLg+2D7/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55F90C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015525434.31571.9763810264267246577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81790a6d95624019d2b3c9b9a5864008d60bb01fa6d0933c95038749e95ea8f7
Date: Sun, 04 Dec 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670155254
