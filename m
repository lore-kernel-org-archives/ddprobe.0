Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560EEF9D8
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 11:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5079C4339B
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 11:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685188745;
	bh=tW86zdStXamnWeVT0UOt9vDRCjlN2jO35pT/Ol00/HI=;
	h=To:Subject:From:Date:From;
	b=QhMuhodmLlwYiwub1LU48uUlPBfCwAR+dpFCbpcgYzzvt6A/Ang8guhAS6a6dkB9o
	 xbD/r2qjFTO4fAq9hKNpLSXGe9XUZzxwswUL9mr529DMny1D0PJqub0fZyCLaouHmT
	 egEoIbmI8Jodm5j0uIER8zqPw7BZ904jBCcw3pL1MgM7ChJemoJphzFpoKevz6ij4o
	 7ywrppWyDktsu2IaaITWrZPl5NpSDOMWgByStXV7QmyI2HEGXhaOGXajAnpp6HLpG9
	 c6tS9nwbqnzuZvESNoWYj4PP4uOds0seW65tSdMUuVL1BKCyZx13tATgUrLFQg+Ctf
	 XzoYCjGRiNe5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72EDC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 11:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168518874576.11566.8023503275123953441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf60897dafdc753c1b361377454def1a9dc1e1454762b50ca958a0b2b5baba98
Date: Sat, 27 May 2023 11:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685188745
