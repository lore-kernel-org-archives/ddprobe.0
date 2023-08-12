Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8792A15B6
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 04:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2C1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 04:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691814188;
	bh=5UDztNyDiEbt7w3I0F9XxXHXPm+xoEDVxZ20LZflv9M=;
	h=To:Subject:From:Date:From;
	b=jrHUogw7I4K8TEpCEZqzHXiWNLvF4o6gFOq92iBEKpsmhLvUqlPf38k+Nf8GPhidm
	 n6aiPpOwuLbz64bsvaNGrHHUdrPL4nHtlYyJLKzbt7RbhiQMe8vR4cKqaLUw/kjJoK
	 pU4RhDmhbjGXeuvzPp/gRVX5KpYKqlXa0xkQT/ut0yB/4omWrkW05hnDbZz7paw9Zi
	 DbzjkH9ostrcrnIlhEEc2A1+4It19fgEsxdFZks8LMoa0D7uw4EE0+1mnhonfw5SwF
	 D4JPE7NQSMj0P4OcVQe6iRNZYF9adfiIY4uqzGs3Ga0vOKklcku0rntYcrjwzj9/OK
	 o2Mnw5hlAUtqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC346C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 04:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169181418872.15605.6128842621856853534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccaba260696703df6507c5c83b7722bf715627c83a6993c9e6f471c686c2426
Date: Sat, 12 Aug 2023 04:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691814188
