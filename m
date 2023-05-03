Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E634A11
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 13:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC926C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 13:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683122345;
	bh=pjuMXZIwhV8TIDJ+n+LZOhxzgT95meTAZfObZmlwLTM=;
	h=To:Subject:From:Date:From;
	b=Ex1mXBnVx2h7YvgBlt/qNk7Ayw+cqma783vcyQ16tfpKbaRKCc4/MJ89gFJTWzfOb
	 s+zUY4A8SNBRk2P/XILDvHc3xft+gTo+kufzaB94c8S/9Vmt+aWRVma3f0kfMgoZti
	 O9NeJtCBGfH5v9vIf7eeXCrtS6byQ7o4tnl/CSF0DaJ7N3PevLsgzt6jqHsqHi1TVd
	 TgTairR1U9a+Ib0DXTiNF3fq3d0jfVEpO27VwIJ/GKKzz5xiFTfohqk3H6gxuJ5MFF
	 PjAJ1erLu8che6uBDyeb6llRszATHNBYFiWMcoSblIidkE9vllRBwo+WgHk8KvcKtt
	 nNh6BfXtt5+hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE345C77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 13:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168312234576.8640.14786137401656300651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6837eac77b7ce82630a9ee4780fdc9ce50cbe56492084f15cedbc3e91c874f45
Date: Wed, 03 May 2023 13:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683122345
