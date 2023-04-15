Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C46E7C
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 10:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C2CC433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 10:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681554785;
	bh=1rizaO9zu1QT2LAw4zran6yzm1gq/zQ1Ku9D9TFAE3M=;
	h=To:Subject:From:Date:From;
	b=smJYVI116E7lhHg+4y5cXBV5uNH/CLC6edOdTn3MelhX7lJaTNQ7ZNl0GYvOcEk0o
	 u8Ms/5Vz9pXsaUuUUfuESHYcEHiMRoO9BvmVCHkv7BYT8wtH2qptFKvACKktYXDE7R
	 4UCXskhjVqTAPCl4nBE/KpUR+QXanyEKejFPTj/ah+RUhxIBiAHrIFuOt7+FNZ+zLG
	 Ho+KOFsG3+gzSlHUXLs+6oj96o4yVZb1SK4c9wyRUceQWpBXDJFKyH0rZlZ8FzCF6o
	 bjs4zXYNmupSLG47YnEi9FBpN0EDh9bppxCKBHJI0FOQfMbgthvy0e6QYkpeO84sCc
	 gfr1PX8H/ONlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B720DC7619A
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 10:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168155478574.27509.10286552142261678129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f04e3bfda51d7a37f7ab365645e068894b6e22029e859d73dbf22e46622f46
Date: Sat, 15 Apr 2023 10:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681554785
