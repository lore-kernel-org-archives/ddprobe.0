Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034CD7C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24FAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673714487;
	bh=YZUCJKYc+XHNShjhvnZ2RnzFeiwOykdl3OpsUCyfiE4=;
	h=To:Subject:From:Date:From;
	b=WJ0wwDyJUZGpT4kyZpWuJOgoM2sUgDJpZJwPSQ6Pdi14xg+Z0giCwUOWwu35cU23E
	 BNQIsef6Dq7erCNmYGl9mSE+bCRpRAKPA5gEUlDqoIsbxI6kaAwVKmzWx03WW6L9Wo
	 v1takcyKe+tKdTD00+7lwol6OVtZVvnz1kein9oDf+vorv8OrOYd7XFKoDARQrdwjx
	 af1ON4iL9XQ3UkwERObbRlUV5HT587u9AJwv5aSjQmztlYo1aPXvRX6m3UmM8BVtFY
	 RMQBBcI+vkqOLULdjQPX4YCfqnwMUwNiatKX+HEtFvqA1LHYMMRfdBn4QfHE6NlaAy
	 WcxG6vh9YY6hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 839A2C3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 16:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167371448743.2719.14870963645794693434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceec404f81caa7e3685ff29c7590f17f58c984e1e55234d657d3eee62863703f
Date: Sat, 14 Jan 2023 16:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673714487
