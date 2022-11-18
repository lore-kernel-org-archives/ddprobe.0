Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B54EBE0
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7244EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668815454;
	bh=kO9zCSLJQtwS3JOwHPqd5NW9v8AUz58+BAAGC+tRPno=;
	h=To:Subject:From:Date:From;
	b=EH2lrwvHESa3aCuXAF/2KT7SkJCksa4Pq+aV10gufmYe6FPV9gnl/7FfULtk8P3ow
	 EvtW1ZDR0fNBuY+SQ0XWIDdSXHlhde3npFQf7Ms4TRjxyBP69FH5zF8eBkvjb3sxsc
	 eutoTJnvvC/ziUOwTDAitAUgJ9iKGwOQUqub9mEAjJcgIxnbujyeTjQLEYWFj/QTog
	 Th8pT+swoX8FX0yLn/LGAqwuWM0KiH2WmbhOZI8pRhE8Z3kIJi4eY4M4HZVKR0Krw1
	 MyGl9xpbXSi9jkvQDtZkcLLrv10o772nxLs+XYzzOFhYbpsodiahpApHsmrDfCbk5E
	 tjl3guAD+1h2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 591BEC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881545435.3087.7879646110526354058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be9a1c2e4e6d5fa45a1fdc674a532ccc9f0080efdeafde79e1ef1c6439e9764
Date: Fri, 18 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668815454
