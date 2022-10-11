Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5AD615A9
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 684F3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665460253;
	bh=RfN60DLRjpYv/o7ZPqUh6P1yB8aL2tbdNUiQD4aqEsw=;
	h=To:Subject:From:Date:From;
	b=qe8xnlVrQsGeypyApUGa8apItGwSWFoF4cMzcn4D1xGnGZt5Xhy3pvV+QOg6zB5sr
	 t9NG4mYp5w+xFooLnomlFtTCxJPvFCL/0vRZtOy9cr5QnFCGcvqDNR84hRUEyGmy03
	 Y9IV88dj9WvFWw+HgylxtxKl4O9f9zzqQy1OYcl+12Q6O2Y6qQ+0J0E5K959HPTp94
	 1ewR3VVuF+dsh4Z5qjRB8CXyqR3o/J01bVfgGCimSg53QOO5vikdigVvHp14eUMMRK
	 +7fKyk7QWleLcEhd+DPrazWn7wUYDTCWtQ3/6vctspUx5qfq8D2WFBaFGLy5mda6qu
	 aDV9m6tSZLyaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52CCEC433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166546025333.24846.2475099980295864630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4eac209d97c07fa02cc5d728ca4e5e478053728baaeaef2a579e693e37adce
Date: Tue, 11 Oct 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665460253
