Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C683A1C27
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BF2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663743054;
	bh=/wOyFAfrRXEB+YnpCEC71cSYFDqYLiFbi39SzfX9yEI=;
	h=To:Subject:From:Date:From;
	b=c4k+w7/WTUl7bwC2InBRUngvDn735aJng7wSdQfj8ll/qp8iSb7u0b6UrbQ272iiJ
	 SUTz9Nsw7FTIYdxBn91B5ECmoAYfSua+hpb7ffVN85UJGt4DHc2XBvHA6rPBR70pYt
	 dsthAomevnLpWNFVz0zHINxZT1a0HJSxxYwHN6+TO/DezsrM7uFEDt2ZXK+kJxLn++
	 nFqowf26bmmBkZfV11wstfEVh610cESO3oN4PHvQMmM6WJpi55K6JYgoYoTZRex4G/
	 Q7osE6Z7pEG+sH13/urEFetHwVaqrhXNYRMT4D/O9GylhyCmF7rI/a5/jb5oIhZ8K0
	 r9lmyfBJ1Adog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E6DC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374305335.1169.8566390553046915555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f542066b36f807fa62229f7354cc08e29668a9eb6af14b68154399faa87bc539
Date: Wed, 21 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663743053
