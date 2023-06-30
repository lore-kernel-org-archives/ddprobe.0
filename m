Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A88B15B5
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D485FC433C0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688088188;
	bh=LC4pJBKYs9JIHAvlOQyMcFdnNWmIRIQzrK/UnI80dYE=;
	h=To:Subject:From:Date:From;
	b=HpLgzNs8CVje7W9MrcUG7+i6wSS5jlIR0gWRkxSV5dr+/FKjdUIqHzyPzgLppg23N
	 oAnVkNkDBuPopyGhDP+J+dvCwYUzx9FFvqCnFj50eVoea2kVQmK6fpYL6nxdfveT0Y
	 IQvMEvxhpa+uIONrZPyhCvGj6068w/5wxoQVqgdDIaWy2AesmxDxd1S5iA7f6i7GeY
	 uXYklxakiAe/KyLLfyRd21+8xkZUwCq6OhIVXi2xIU7pJogNsG4uMoQZvtkJyjTyIg
	 5je7lqPRBamMiI9JiJmkoooWP/V85WRbj+gQxpZ8ZTVaQ3pbro8f7JQB2Vi5kidDst
	 8T9DGkL5wcCOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9582EB64D9
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168808818874.662.17594273440399077418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf31e59ba8812c547e7dbd557505489888627d02a7311e68effe5af7631d750
Date: Fri, 30 Jun 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688088188
