Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C99A5C9D
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 12:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0308C433C8
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 12:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692101588;
	bh=6mMnBS+mjAboXMa2CwiF+W02rfyNILVfW6ccUNSFrIg=;
	h=To:Subject:From:Date:From;
	b=fwpn3p+9UqzCPRY53P4f7k9x485Bc9zLaxF2JLtUX74nobeeTW4/6Hy4QjtpOtvGT
	 ciLJlPAEPCsmVebaOnN9OWDV4Of8MQUvD2uD9hyBZOQ2yf+bN77pV/Nk7d8hQEiVjP
	 YWJWLsqMRPrWjotdLOzvmqWNc8usgpkd944iBFObvWp6egBSGsoa1v//MdqfGrpAU1
	 q5PbimGsv/OlehzaPdaP4Uqwy1OVxUYSyrp4t7voe+1ugr9Qwax0nuBG2xIejxV98k
	 d0ENQx5CvDIhSodqjOJ8FQBsfbAcMu84uX+QKMqj39RX5fPx4uh4vQ8AMrxesADi+Y
	 yQNMJ/CQjvaTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F1DC0015E
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 12:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169210158868.8613.11127540460995434693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17006991d380979610909d211e162176dda350eb67630d64c76e336555983d82
Date: Tue, 15 Aug 2023 12:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692101588
