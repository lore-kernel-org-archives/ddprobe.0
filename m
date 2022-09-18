Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C657F3
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722E3C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663500653;
	bh=M7hKfpNsy55maA+/Snt+mgybVsnmHYcsME1XuIPatZ4=;
	h=To:Subject:From:Date:From;
	b=jSkF11i4fEcMXJg1p3Wdmf53VDG7fKdxsGicpT0RbtRI4UhgJ4V/qGQK8HsejuckA
	 AUQBZpFthicuMLCKmCJdvBWnBjn2WnePgLURMnPRVaD4mFyW83szRofHRa77py0Sol
	 GuH/mzazNonFunLgt/bJnJXSiN6M7AYTT+Zy6puJTnkgoFJjnXajDhP+5eBx211XXS
	 s1Vr/gWbwDkUEgQwAicd1lxm90lFlR3t/UOYAbRWqV3M/EcDXoyrkMwt9zZEqqvRUD
	 UO6csg/1RX1wyWHQzcjAyZInJd5hg76qHrRJoppd5tRKL6vY4lKGegSmhXyyHle6su
	 bM6y8pcuTMd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C289C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166350065336.19598.3355977892821703534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28aed50d33f62dfd8f0014d2ece739f840486dc7427e6ba5f0c53e8b81a50188
Date: Sun, 18 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663500653
