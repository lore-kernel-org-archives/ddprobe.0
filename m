Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED99210A
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F030C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671876087;
	bh=BsM+sRVDYQ9h4t+vIN51HVbnjH6UVF6jSRRhi0flu/c=;
	h=To:Subject:From:Date:From;
	b=krMWm+gdm28KvGluHTvBK1TTppxyd2UuVUuQJ/aj6ShSUSF462d6xbbb6xCCyS8hB
	 Oe081hibPcWhiD36qJOBcgNCqfhGZ/BSJ1gcwZJYLu1SO9FcQJEW9JfsRj0As2RNCx
	 4B/badeYG5eOoKiuxo1xYVIHr3/eZleyorSAixMvTe7YluaKEe2hWJvFZi/zPb01O9
	 ZD4BmEVKC3nZBm+E3UbZfA6rm3xW5s7jeTvEYsJ+pHwlmoj4+R2IIRIolbZhzS7l7n
	 zyICvrWv/GFWPEuKZuBaqeHr2Dzfo7ieNz+oP5wl7edNYrqfz9qVUvKRJ49uTn1mS9
	 bivvgj4GFqkgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FB1EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187608747.14765.7327118593816209283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8169ad0f613d5323442bcdc18ca0772d7746ba6d49f56436a7a7a9e47eff9654
Date: Sat, 24 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671876087
