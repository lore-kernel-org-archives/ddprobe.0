Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525046FD7
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 23:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF867C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 23:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682120946;
	bh=bE3MCubyT26GGsVEm4tWQbYBQBk3yd7Hw8sfgOsxies=;
	h=To:Subject:From:Date:From;
	b=lMRQy6PR6IPb87PjPXwFiF7Y3zC5xJUSGhQ8anzgHiVq0rjhyR8nUyq3sdENWV+/0
	 n/FoRsVwQ3Z/WuB+QtyOnjGqH4XYR9m4c+ZZlH8M2d8pJ7WGwS5dHLrEbMeqwRwFUv
	 wiKisDiINjDI/zHaQHyeAN6L2WIvRPpc7SNQvnLZx2fAzUmsnCC80kabUlBMucKrmZ
	 Hm9oRnscLfxwtVFStvND1BWYGAEDLJGSKIfPOcjJvRy3MdaDLHFViD6GdW8OlUHOJS
	 S7GHy/SFjl9QiuRivzUdOvo6QakW6J8ADLQk/4InEtJDW3aBTnVhfzAKqQvz0tN9fo
	 mojLp/3Pjk1oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BA0C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 23:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168212094579.13737.8668902809288187185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dbaf19966e8622b45ac4c3e58e08ed9cdff29a3dbf7d916772791be5b43cef
Date: Fri, 21 Apr 2023 23:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682120945
