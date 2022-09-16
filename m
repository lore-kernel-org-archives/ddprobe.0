Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7315C81
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71572C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663344053;
	bh=ZkW9D2zyx0mWdvk78OpPGPsDWcHQZiamDUptydHkbDA=;
	h=To:Subject:From:Date:From;
	b=W9bmc6seRY4euvDokiyOkw9ttmHEWlQvySMI0EiEdaXWzaBFY6G6zgTVDfORXniM9
	 3OP5gA525Mxp/qeiklBPTU+FXjZPevN8OhVT1yCt3VV7LSVQb/s9cStVaSQMVLGYoS
	 +VgTowPN8NbJ8eFeFCKdN6kWuhCH4O1JMe5DN5Fyp08Xm3Fvacb4sN9Je24oMVSOfQ
	 3gBN54TFW6VK7UPmHUYOH0Z1808NTi97vFUkgV6fCZ6Olr2L47TN/YQNzQqQ1incPs
	 Y6pjx5FH6eMX3Yrd5gmVZ6R7rRDPEyrF7l+pMyzzCeFH3IxMTLWRgVWb1G/nDw56so
	 cd3+6AaURb0sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A214ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166334405336.1984.13496250923706706871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767365ce6d8c9a0cd9f631c327b5d07f0aecbcc1f102ea1f9e69dfeee3db5599
Date: Fri, 16 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663344053
