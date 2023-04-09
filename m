Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F90CEBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 03:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01B22C433EF
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 03:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681009266;
	bh=UH2YA03AQBODAc9VYunmKv9g6nIc5HMFtw7IsEsmB9k=;
	h=To:Subject:From:Date:From;
	b=X64BIH85YtFsrh+10169BtP/tiEKScLCcZBB0eCN8CY10ZNBk2hICdZvd0qYlycBW
	 6aoJPJzLc2LGvVDDpF9NuJrHmPrwW0GHMEWIbkYvXb1yPDxhtUJSEclrrbXW1KVuYV
	 al1+EXuGfiU02izHvgF1RMdw3GCuj9o/g3yvTm5NyizujauRNTa4bD32GLdL8T2UZv
	 xTRKwEVyiI2tLXqFKum+Syb8kM4Uqpscwcyt4p8L4i7QDKwNBwQEzX8mPCc0DWkS6T
	 10eS+GjTyc2yThN7oLSnzFrXhDNF3OG+sZuHIDx4GlE72tq7GHNvlKnZWU+Drjh1Zw
	 +qFfU+yQFy/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF36FC7619A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 03:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168100926579.8588.8390511263277197174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9123e98b508f6fbf139fdf6f7bd0bac6cfb88a927056767f6b55d10c9b763fa7
Date: Sun, 09 Apr 2023 03:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681009265
