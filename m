Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6419326B18
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 12:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC594C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691584388;
	bh=C+yNYKum98b8EaNWaxDD5Dn3eOXx0apmExpV4+gDK4A=;
	h=To:Subject:From:Date:From;
	b=F060dNT7qhh2y9+9x/W2stTCcHOQAZaLxem6Od9HK+O4UTX9HO5hWRsMqQA2/pro5
	 Nf/f4zDd0mP/Rbcd99PjydwIxUStR6N7pN5e5nWj3geA4Ju7olIvURSc3vknna4rhW
	 gp4px5FFWWDbmjgYuI/32zV5+Hq3Mm69faPFk6eu+gDIK97rrHE3ZAKDGx6OEsRr6b
	 O++hdRa6PilRLrh+AJ0gr/30YmZZs4/hc/ydwUljJL/v1DDK9zevK8khOpRVofTsIj
	 uHkxbFjW+ESONEIrdqM68cOp6nzrjwM121wMUgdrQUDjgsOsABWdum4HJbwYtyN/zl
	 iU+es+jSTGZ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E5CC0015E
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169158438867.15826.1605554734507592528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd51eb88e2449c66c67b077f12299a870806744485656cd27c6bcfc5a25a28b
Date: Wed, 09 Aug 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691584388
