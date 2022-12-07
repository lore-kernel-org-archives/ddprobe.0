Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B183C20F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CA74C433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670419854;
	bh=G/lRMb5pJVWzfS8kiXtecbMh3DEs8bgSk9T5SV+PkDo=;
	h=To:Subject:From:Date:From;
	b=L/5ibpBqJq6AiCmmYZy7nTpWkw5Vioefonbis+W3BzzspmlE6CQONUEdnEBuHVzvc
	 8q7DFXbC4j3Z+9inRjg3JUb2WDw+7Ue2baIItrjkGuHjLrCce30OsCMIhCe7c4RX3D
	 0zPvH36KRm5j4OE+HctGH74BNDv3yCXDGcQcZyXG4Gbozs0PYU4Zk31wIX4/qd+MlZ
	 4wFqwmcgfUr3CDJkSAiPMIZlD45QXkjENYH4H/RoAwGUtyp3w/UghdepktZujDosIL
	 lvGo5nmq2v7Q6JnM9PZM5dPqevSccm/6h5TiSzj89fMV8koTP2rujqHZoMiFyoEFTU
	 7U8ONzJqLIGKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E84C4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041985432.26024.5402449141829246969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9e6c7f3fdb4e614cf2a06eb05dacca1729941bc77bfe0c276b72c5e741662f7
Date: Wed, 07 Dec 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670419854
