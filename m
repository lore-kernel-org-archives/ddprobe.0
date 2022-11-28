Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D95FF362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84DE6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669612854;
	bh=1HKYlPvNnNoMDdHInBgx4OboJ9M4lOgJtkHrrW3IycM=;
	h=To:Subject:From:Date:From;
	b=IJjolnKRVxcG8AHFoPoSkEuZVoxoE3SJQ/4RKqrE8Kqnx4rQzdDrjRQXL6igNl6zj
	 HVUA7CsuT+lF5nNkOcBCLuPW3DCz8vC70YnRmg/Kgm2LPWCd5ngspnNIosToKPR/rg
	 DGGmUTVJT306HTMaqLWvJMXp2WTUYlrRoyCf5m/U3WHnYsG5gDFbqbs80OiuJp14jl
	 ge1Kv83YoleKL+Sbv8wbJEKHuhjMV2K4PaBDkqme3HFoInv51Q42KZjjGfvhWHWqBS
	 VI4dGc9ZZLfiH9C37c4a4pYtS6dqg5CP0qy8pWKekX9ngWKUvJmqdHbwWkJSfO88FW
	 r48cOWNnSGN4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61864C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961285433.3255.354140394290551519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad458f1e04b0b1615eccdaee948c20b404014b633fd816f814cc6e2eb76e82f
Date: Mon, 28 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669612854
