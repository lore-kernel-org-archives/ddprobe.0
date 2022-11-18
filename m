Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00D91362
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6929EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668735054;
	bh=NT18pzBmbO/ntMpNgn9Ot6MWdqP+0Zc0DvYgSWG5+eg=;
	h=To:Subject:From:Date:From;
	b=vQKW6D1CDah4bzLzguaH5B7giOhr4OBqmsEzJLdtmEriO/qEhDknyJYDjnT/MjJXx
	 c6GaltG9MeeSKDGPzvPIe0biW5yItD/9MPpX0osgIYbAE9fPs+OiSH8fXpinXUZ4Z+
	 DvbhA9PtyMAkw/6hzPOEWDAKbl628pCkNYX5avnTZvzie0e/C0hyzg6In6GgewWdzb
	 N51rzf1oRJJjfutTFUQ+Svxb+y9nPFHCYf2NpKNroViw4I/NsvLRw+kJ5cHI8y61zm
	 le/OvaITFRyu0gGsGEJoBJm00yWzLOBoTJ9XfDnzHOUIzSUTLvyXdZlJV0/kUWRRfv
	 R+P9r4dmexjhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA0AC4167D
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873505431.5348.13770315620124112729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf31ab250675b41f9b7225727c2c30f9896ba0c5b45b2151b1ab66316eb22b1
Date: Fri, 18 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668735054
