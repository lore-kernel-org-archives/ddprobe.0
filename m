Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCBB5662
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 13:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54CCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 13:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679662865;
	bh=mxp8+/b4iEF5OtkIl29zZFTnzXDq3JB2TFfXI80lD7I=;
	h=To:Subject:From:Date:From;
	b=JNUI0DoP2xkyW8hrPFvsmd0LAq3sorWIkPJXQea2UOGTMmS6XJob8tcBWj1C3lJ9i
	 AyBx7NSfioGfsokxEUzJAJdddy5PV5AkxN5tT+AVgmSRv1cwtprS5KFmTprAEgxiHm
	 ePjjBc8vIgsNS8rApO5ILFv/WGYMNj/nHClD3u4fGjW0a+Ado+db3sDgia/Eoh+ubk
	 UWe8RPo9BqNmmHZQinyBYf/PxZjsiD+sBmMMdVVU7fLar4CM2PY0eIK/a7I2JhCLLe
	 ElNWY6QeDKUpIYn2xvHV1V0Xut4/WAx/xDa/7oK+aBnW9QICOeqCJK+s9IMS9XQl0m
	 6vecj23o1fvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEE1C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 13:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167966286576.24702.10344978032421573878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4416b998fc1c9d2c91ad721c18eea38a5802c4de05098078fa99ab9265b1dfb
Date: Fri, 24 Mar 2023 13:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679662865
