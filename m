Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470547B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E719AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681647965;
	bh=bvxZSjaSbCCSGSCBH+jiyu5sw7ecSpE171/12ASKCIA=;
	h=To:Subject:From:Date:From;
	b=cA48XxA1wqJQsCXXZ2MH9snRrsfjzxy3NUjQMinX1u/PanAbtPnuNyumcfkUW6snf
	 /GPym8o3ScjTN1IPCq1HMhCqBnF/RHfRy4OXteaPjd8x7NSu3AB0xxA405fCzRKLLB
	 AWqOWgp9xyhK16dSg0auS5lppQ7T3ccQ8EqhJZR/vieLdw8GSfJWOFnR+GA9g2FtQi
	 ROJCgsvv5wIniXf0SyvHxNHZOf5TWi5EXHx9SwuYAKSQ7J2qR5DI6NwWFWHvd5rtvo
	 79WESJuMagKc1NCzFSp7llRme4gVU6hiHZIfmU5pydP/7hT/Gk4ba6NIAELw8B9UtB
	 sSp6ffKRgmBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEF3C77B61
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 12:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168164796576.3418.4649522406580539414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28c1f4f7b0cea199f23ef7a6a628f0ba452ea83742f5379fc33efd165addc83
Date: Sun, 16 Apr 2023 12:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681647965
