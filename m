Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BEB23D5
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 04:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D10C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 04:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676348105;
	bh=I4dYNdGf5vHSNVl/wYQQY4gReNMNI1gvI4XsHscwjvU=;
	h=To:Subject:From:Date:From;
	b=B2e+sbYkkiJSdv4yg3imW3mYlYKU/MvWZQFQlT9ZkQ4qRh8OJFqGjoMV63CnZIg2k
	 eAl7ag2mXI9qkjcYwUfgQA8/xcocHMp2BeIUnqh5rek6Y9kpXfIQ8J0inka59lDxFH
	 FMnLiIhGshX95vrEWkOh8Uu8XaBhr9xjR3yPy4o3J3aLR6pQnuaj0fB0GJdp5i2wZC
	 UT4EneEeKHopICXUcE5BuvSTlvpaBBhXU+KbMzEVf3BXj9hAWylkR/tvfFGWhh+bvz
	 Ot42ZvQsqjXSg2uN4BRY92XZJVxL1y49TEPJf4f+vmzF29ELKMjVoL2M55bpH84dbA
	 VUOv2Uy35WYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF71C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 04:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167634810576.9006.9193020614256855974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a31550cc5d1d49f28e0fb67c82e9c5cc437097db71ff3f61b8f10bf1dec707
Date: Tue, 14 Feb 2023 04:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676348105
