Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463AB7475
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 17:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A97C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 17:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679073665;
	bh=TImYlrrvWnkFGo6jzMm/CYglDoGIe2iVZEu5q7RvJw0=;
	h=To:Subject:From:Date:From;
	b=U9Jl+IioJca7346yhrseMkRi5yTMbvE9zf2k/Y8vADiLBRMKKdbm4cXO+nrsUapq1
	 ApDk+9m1m6ojAD0Zyw7vDpU/HVhb7gC7TXmpsb0vkvMO1ETmtCht+1f+tjaNsWA7yl
	 B0gqbMPxmT8pjb84BYOVeHixuZsgFZqCbzDVU58JQn5EyFtaliGKOof2FgqYqy2sxY
	 FuJ9QJprzUZE1EURjLg8smRvL2ALRakvajXB1y8+d9r50raVQRVIK2E6fjfwlerdie
	 zH3q+AKsbTe1/rsomT628nu27uHZCbRCGKjnswaI8LKvqsQUB6Wh8AjytJfVQmJOjx
	 S4JJfe7cdSweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D05C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 17:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167907366581.1530.13953084136470654077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a99e355ff0de4d23e357501d269518f2ce0d1f0b34d4b3e2b6d974eb7e5554c
Date: Fri, 17 Mar 2023 17:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679073665
