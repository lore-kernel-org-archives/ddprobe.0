Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7A3C39
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACE8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684397765;
	bh=1aJ9bRIMnV6Y+YE8zeqxxNVgB7wQIC21g2Ueo7v3HfA=;
	h=To:Subject:From:Date:From;
	b=o6HqL3vv9Ebbs79BSMvZWbIWuSbiIqmBf5cfOq3zjrK7Cd5V9wdC6L61deA8WS267
	 AG3HRNWrQ9WYzONbgsM+v99YH0WnGnRdJhB01ibE49NOAqUc7WPiKNrTmaylhUKyte
	 ovIHyOqO6yFpjvFlFsXXtVhOBNhWMpiUloD60/0IMPOslcwmeyPukdCCHbDK1sBtQY
	 9PyxxxOusKn4t8YY6QY5FKoVHveFjSqWfqUUv712nlpOUFLntXBCX/zGot2jWi2VVX
	 gqQxUNUoYzeHo7rgoRDCf1LthLB63mruh9YtKUVVq+qM76NbVSGSyxTT7KXl3SRWeK
	 +QAYoFkjUi5YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E9EC77B7D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 08:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168439776578.4020.4932983405294372803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248f942939669dfc7d7635710b9bbb38278a084ff3704a42f28aa3946fe70cfb
Date: Thu, 18 May 2023 08:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684397765
