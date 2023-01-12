Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C22361
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 865E4C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673485287;
	bh=iSJRoWVbsX0fzcO+wz9bDlQIrhew++Gf9jHFkv++uL4=;
	h=To:Subject:From:Date:From;
	b=sa20q8eYWTF2RiDgvIERtmolT0+k2xDQ2DA1jqXg2a69sj8+rGzDh7rJjyvUJuGrZ
	 Vz5KwWq9BO/hMwYzx6z/Ky+ZhbYTWoAz7UAkq2pBRN59/cYz6pVTCzek54ymCbK8LD
	 VsCh1exJ54y/vMm3T1DoNYnHBShc6kpuJCFT/0NJ3VrzN/nDHpkX5RIpKH6UyX0/JT
	 G/Sh37c0BkBKW57Vqz2aE7LDlEYTU9JuCqP8XVdL//DBZ7ex1SV7zqejvDGGHzoDKX
	 mjBp4LK/E6w9SVBojxBPdEg/l9rZVHvo0O8z3+t5/TTitEDUtTrQoOTCRgkDCavcMj
	 xuddpkwDjS8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D59C46467
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167348528741.8588.16753233105485448666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ee5bbe8358cc195c27c2148f34aeba7954c1495fde5b16a243604fb2468d97
Date: Thu, 12 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673485287
