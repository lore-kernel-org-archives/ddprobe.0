Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA42615B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C9D3C433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663897253;
	bh=JVsm84hWUWbGKOxmvCFZ058Xk2PgrQkNEJCarLKhAco=;
	h=To:Subject:From:Date:From;
	b=lRUtCY/o+V0LZibEeZCes5UuGBr7n7PE+MHRvAt1fzzd8t+/MiKc7M5g9FdZpTLIk
	 mbIuFEx7nNBo6VgCcMZ9hZo9YxGhRD7T3cNUzqeoOstcVqNncU/2QDD28GzfvXtZBD
	 WA8rpfijK4HGvGcHzgmCkmcAaCZ1S4IU3v7kpsohLQxHjRh9bc/FJThpvsYMKZ3gCI
	 WA/SQ6dVmua0yBSxwU35yIlqUShE+IhQy4cys3cnMElxptTloZtL/B5Pztm8Rvtgl3
	 bRxMQkDM5Sz3mik1RBzQ4sKcR6FRa6Ib6Xbh8Q5JmJfsGQG9rhW+EI6EEZaQVJNDzT
	 XgM71c40JEnzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F696ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166389725331.1371.8016226566561697462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337f9ca00c30499b4b7b14c0c6b7e00ddcea258ef66c715f76e8247edbdf9531
Date: Fri, 23 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663897253
