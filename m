Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8056BC2CF
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7110C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688732828;
	bh=MMoXRjGSmPce8joh0zKWPaqGEzWxQJPCRFY+ZLQFbXQ=;
	h=To:Subject:From:Date:From;
	b=QidTjb+JbhSKgLAXq1dCJ+TttwAO4QrE0sRr10tdw62/hE16s0KMxkAOkJ/ZER+iq
	 lksVt/dT+QiHJen43mtGAoWlibS4iAdTZMY9DCLOqIoIUD5e5/dJQ5mJWUf3O5qdz/
	 vQ5XVh3VWUQ37Y7WOfNTwfLOnn6QMEEAILshhpCktEKde0HYe3DJSOa5zlH6rFJaAz
	 7Ptz1SEKywdWyaw2eAzpwYl5qFxiclVkCKm/sRuuVG7Ylek2FEXB5j6Qma6ltAuHv8
	 atks85laIPBY1cfN9Ayo1aoxiSb57+wmtcnzB29rJfdgl0vi+FnAbqTbtzYw77QWBD
	 5+xAMn5OU7IOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A338EC0015E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873282866.32373.9068633195560696926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a58728061808dcde6f4392d67ece24bd7d6b3a2ec94708b9d708575e7f49f8
Date: Fri, 07 Jul 2023 12:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688732828
