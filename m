Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03AD185D
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7274EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665376853;
	bh=GUnWKr1c7w3v6kKrN2fMVwKDlCLHirD0OawFgn8efVw=;
	h=To:Subject:From:Date:From;
	b=dHbKgp9ARfWGJVD6WjfOxAz9LpSgqhFwNAG6J2tGgOxuB1siKFKN8v0wnq0b9rL9o
	 jvpjBPnIuGACwaGa/L4BV7udM9wIYAtI8FoduccXJFNz+ZwsRp3zco2rdhoDg902HM
	 q+kCzjj55klI3xC2EFiN+K3qEdnMdc2vcUIHjbipAU3l8okgbhPnbCaQddiGpN36ip
	 jm7do6vvVieLQYhSYmLiGfxy0gEHvn6N7MdOqzzvPZQmxtprga8u+YlujEgyE6f7QJ
	 RSOwRXoclQEh7fc+KNHX2qctMJv0itehQA8BzeP5dgcLxcjxuamJy+mSbcdjnZh0iX
	 ws0ZTAhfuCO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58613C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166537685332.9800.17217279294619512798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be9429605fc0af61175a3e834e9478eeefc3bea71a206bb4a9c1e95ec6b72cd
Date: Mon, 10 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665376853
