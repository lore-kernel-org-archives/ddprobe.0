Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73BE2F39
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BF3C433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669505454;
	bh=6rap01ywiCy9P63u/pQtevT2s/HFwfQNAT/BgT+KfBg=;
	h=To:Subject:From:Date:From;
	b=lH6UGfjXW9/8bwA1wY7MUI0jdZACCy7yty/tqYGJ1SyqvMuwUxRcTDsxNwKJtn8yI
	 sd4ovY4eK9UumD0nxvmMggFZuYMj5Vzv5T58JXv6CqdPLEyQv4uNFIwczl4JY0FkPI
	 64jYOY4S/4H65xsme449gHEJPqj2P9ycl5ozToaSLhP5jqOsiOIHwPtjTg1xqL4EBn
	 NqJymLJ01dYTxx6owOqC27hkhrrE1JhjYZIFa3uTMcQhU3HJ+6AuzFs7JaZ4w/kcOs
	 kAzkvhlkNPO8erAWAcKY2Y47baO7Xqwfq+w0Ky4dlnkhFb46SMVhuZPQkXZ6L1d5df
	 cx0zRNsMfX2Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56471C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950545433.9641.2715964552132001505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be0d12d75487c01c4a8fadfa1d8d7ddedd141a1ed5faa0a118aa98244dee9bf
Date: Sat, 26 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669505454
