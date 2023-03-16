Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260DC37C
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 02:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BA2C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 02:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678933805;
	bh=YLh9UP7il9vBx7gE6L5NX2CAGcV7zBM1iCbXoQUwNXw=;
	h=To:Subject:From:Date:From;
	b=LkKEW+RqpeVu5rhrmvhNhaWClha0uZW8m1M5xfPl7/9MKxHgiyN8l8N1+V1KOHuBN
	 UZuSYeMS9iJVXTuhpVkJcfhmxcFmphwIYZptwqp0B9y6VqXzomSS/BQbvhqw/7brel
	 lzh7sRIl2LSgikmZ7XPpG9bFhkQbUUlO5Nflz2RX02i7y/kTSoWqlRwggKSy0Evhwq
	 lHo3NeRDBzStnV8NIfDJFYnJ1sILAtmRANTZ8+6PeKd9OGzUfk8HazySyBwggsqOGR
	 wcKZXJ48M3knM/47oOs2l3AuM76s3jzbchyE5EFGGGWxCphmFMo1KxI5mshI/P2+Qy
	 lO/GW31jHFNcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBE3C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 02:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167893380576.14837.2038382597999741906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a6918955caade483a00af549e03a7db474a3f41147a8c7d52f1837eae0e795
Date: Thu, 16 Mar 2023 02:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678933805
