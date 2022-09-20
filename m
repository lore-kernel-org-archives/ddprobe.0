Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4AB97E23
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68A10C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663707053;
	bh=b0M6qC8ZcduDiMLF0hsHHr43YhHL5zBT6S5N+HrAbYA=;
	h=To:Subject:From:Date:From;
	b=Pss5aKtmUxk7TiZcUDQXrGRHsIgHf9aZk1K5X8AtDYEz9TAyIUnJPCGV7Z16XpaIj
	 zultBj8Zf6AFPBB7nRb4+7+sZIKVA3TWPKJ57aaTSdix7fd1dagQ2VM/NhrL6FMgvU
	 JCHrH/26Mi7+Nsjn7aZW23YL/ylmeiIyPqBss2qMdyCfdiE1J1JdmSSxQpUdxPwqIm
	 iR1iWoZGCCwJYuTRAz8iR9cdr2GFFHBrLE8E5fMGC0rRdS5jrX+J7+IH5qW8L5TX5S
	 S5UthhoHB4W9WtXyL4CfYlkFsTICZhHOM/TThE603Eiu43aMGwsETrhhQ60JH2Bwgy
	 i4bIeOhkfFX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52699C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166370705333.28348.9589829955748694683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d6d7fe97a2c71749ffce8565ec532b28c2a76a317f686fc1b8203c4961d764
Date: Tue, 20 Sep 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663707053
