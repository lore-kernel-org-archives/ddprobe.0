Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B427328F0
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65D0EC433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664712053;
	bh=cIiUlFKMzWeQYBet8Oa/l9yoYfSvMMk7cFAAmEowP7Y=;
	h=To:Subject:From:Date:From;
	b=b+vYibY3nEJvzQiK7g2h1lcTtS+q6JcjQjN+3xRGbt3Kex/9WNSWZAxLTR3s1cJX7
	 kW6lVTJDnZV2fzAAVsNU6kFR+TyhULJyaH425UJbUttlahFdl9Lstpabnj0I5958sI
	 3NYLKKf67hxjHDKCvE186Ul6U1w4LVW+MhQj/8qbl24A8+P14HakiFCQy7keJjZ9Xj
	 p30b/+VUGKroVIk3mdr5dvY2YAECO0kgG5XjgHFI+cDE19yUrqeu+R8C/nzTUx5fu1
	 L9R6NdU/uvNB/fvdfifDm1EfDPwZq3wkUpJxiBXoheoS0EfGUIux39twp6Lf47h3Fq
	 42PLl3/CRkftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F21EC433F5
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166471205331.9942.12723361445840918682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6d936bf47500e8518a4fb039ae18b197bcaad643594d3d5745817fe4c7ab5d
Date: Sun, 02 Oct 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664712053
