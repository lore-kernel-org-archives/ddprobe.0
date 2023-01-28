Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 579416FAF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E838EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674925985;
	bh=K79FT2pA8IwAxyaBGoghUYGc1ioYSJCnK3LuRdbQM3Q=;
	h=To:Subject:From:Date:From;
	b=KitNK6hdxSZpIxtqYmv6MWXoifI7W+qzzHj2wcKNFuuoshmCnYOYUiZ4tQSSW/yFr
	 jsXa3UAoZxbAxucTfPwY+pW4NfJp1RelnfnDcdXzYOln5f0KpbM/H7r80LwE3nd7vQ
	 sbgp1g+dq7pup1NWQi3rVUHsxqdwG0DWkIhFLZqlED/4lDx5zDYNcu5PmXwpAmsKPH
	 JFYECSUePyLqw3l2F4z8biOZVjoJImThJjwhfIT2XlxNmpkMchQnrWDptmQG+btJEi
	 Er5kN7r420v1XxIxiLMK0opLZb9GBR3UbNsyvf40a2D8lVA8bDo1+73z2jR6J9jx/2
	 eItOucxOOVxLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA58EC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 17:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167492598578.22151.1128218236174267682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b5ff1c3b9c723991f02dc8b9f4df6752875a3ceb3e8fa58a63f23ba8c648f1
Date: Sat, 28 Jan 2023 17:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674925985
