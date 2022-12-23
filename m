Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E202317EE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B25C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671774087;
	bh=q2BHUtY5JZfTCsM3uwxV4IQZqNoNEhfyJvUfyFFXdto=;
	h=To:Subject:From:Date:From;
	b=QueX1O7DslfWHHckFoNFuT7XehyiOIdLQcR/Nopur5UA6YmgQZQAA8C7LFUzwL2hM
	 PJKbpcySy28gxmVp3m/Sek9Jj9fsrjwxRzeP7BXPAB5RG5hCCbTCvTnXaMgi8qWoCl
	 vAWk42U9gz9MASTlzuYsVEPKRPQEhT/00atq3A4lK829bVouQCLq5uyYuQfaHpTOLE
	 1yII6KYOv0ziFvXFN8rZoH1gVj05M+FAw/h20fKfQYHl9h7abaZJOm4qDwXT4eOxKM
	 mCgSqJwCmCTeExpVUqXIEzJG2R+7NLAZGmLAegM88xPrdk0RiY5IS51CHr9J6RL1+S
	 JKbiWjEqUOo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C43C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177408738.30440.9303259781219050810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f91ef825f88a9cbf68d00138ee0295d8ef828a0aff3c4d74a6e1de022cabdf
Date: Fri, 23 Dec 2022 05:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671774087
