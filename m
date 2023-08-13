Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3479B15BF
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40EBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691907788;
	bh=gslqs1W+gpcuyQQopDfE6moib9E4l96veQgy67Sekeo=;
	h=To:Subject:From:Date:From;
	b=r/Uyi/+LZEBNC6fnLtihEJzNCti4inlEspyoJ9s8n8YqjeU4vuNla/MVov48d7aR/
	 oQ5OiuFfUxzkxQw067ElrP6AQnyI1ijFQkEUaNFWQPlFPM9ek7t56CrGKrqSKkNwSh
	 LvqHDA8ywiQe1hAZFlU/KISn7QOkXjU0+n1NqnlmLdLIHrz34zTQdxTb/EwjW+pybd
	 VLx7s4wMmmBYhk6l8nn4xPsGglcNrJ5Mb98RT5wvvCp3X+Uvb18dlQo5D09oARyoFF
	 auo4GnOnzHYxheveMkjyy0LCG8o7eqzxEeo2m+qKWYTkf8XSDTJPcn7BPqRk533tUP
	 M7i+aMIrxn/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9222C001DB
	for <ddprobe@lists.linux.dev>; Sun, 13 Aug 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169190778866.1502.5966969806851034296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be09a7068b66d05589efa047f5eb702dcf39bda53813242735f5bffa3e5c8cf8
Date: Sun, 13 Aug 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691907788
