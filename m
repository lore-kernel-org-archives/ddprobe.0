Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5906AB8
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 076D6C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680613626;
	bh=ogWZiy17CBntRHGXg8hIb+tb4pbFNtwmKaiOrLZdUlg=;
	h=To:Subject:From:Date:From;
	b=SHHNALoQ2YLbnsMMetg2OPBmyYEsyyjIWfGHP8qg4I25a4esqKjPzCe5W9M4aqRgk
	 v72tcX0D5LJmIOrDBlSuy+It8Q3KDgdhxkvTtmGk/BmUtwjHD/rjXoBgimMEqqw43y
	 S9dnG4dor8zLRYOKYUYiQUbukvHVAEErgZKdMRlXMDQZiz8/6IuNDFWFwEubhgM8Sn
	 dlt3CaEaeI9x5SOaC5jB//wdF3xSuVTPtXEyI39iDxl3XIL0wkMYDsQi8KfyapZeRW
	 keaxyqHwO9Dgw2a9cwre6mzJGOcdVfesrRSH+nU/nXuYlmG8967JSv/Vv0VDjM+/uy
	 SCH7VJPuA6A7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9916C6FD1D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 13:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061362587.25051.10179457281450406196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6c7feaa65d36a530022f6dbd4069bd8ae414a0411ae04a2f971259a09717c3
Date: Tue, 04 Apr 2023 13:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680613625
