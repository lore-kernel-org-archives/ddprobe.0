Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824011375
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 04:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF37C433CA
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 04:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696308968;
	bh=2KW03V+CZosWSQVR6nDqQK8sH992+Dt8ZfioLNlIcVo=;
	h=To:Subject:From:Date:From;
	b=Nk+xB12ba6JuEJwgMFEEkClXiv7wglhw/XwoWlZOxp9mZh2UJK6STCBYUBZbgysek
	 94+UBmlmdUROOvzKISuN+2uYVAXgoxSWgP8qEIok5lG4tDpK6yu3WH8PP7qTcK55EI
	 l3vfwiM562b9VS8llkdbHA8xu1vVteWP5TCoTzQKdQpU2D8v94C20057UQhzyqbNID
	 0O9zUmXEpO6fI+6Ppv/82uet37sxCgWYkykfYTYO33MQe65FEM1EQt7YNRqffR0ZhN
	 npVVw2zmbpU+CYSsvdN3OoFZPy4WZdQXKiOd+QNsdrhBvx9FJFPjkYwDvzwp99ku0F
	 EA7GjRignDGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5E6E75423
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 04:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169630896876.15850.10972116068182690508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab34017989f5d7db581cbe547649432f75ecd1f2b1039796d64f31f0a7aa487
Date: Tue, 03 Oct 2023 04:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696308968
