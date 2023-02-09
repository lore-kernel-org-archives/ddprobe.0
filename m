Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FAE33ED
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 096D3C4339B
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675951326;
	bh=m4wen9jerPZlM2sK/VNHXAO/oq5ushSFN2qBPSkyBaM=;
	h=To:Subject:From:Date:From;
	b=o3EclQbhdQIXk+V575kn7mvgP/pPz4H/FNaCC2FdyKYHEl0FwB/bU7Z569gFRBMAb
	 kjOwH1/QARuYBRcGoquTcYtadM2HIkuh2L5Ic/HybJ4+gWyCRiR8Zsjrm1EjtDj9AE
	 II+Z/XqXNiw3p6/NyAPKrZYGTmHWfF5qg3WAqrJQ5bvSiu5qtv4ULI+KPaJTqHxjDu
	 fiekdCVMZTKfnQ++USclmqVriNnanXVAZnbEV3HvwXducq1gjGOsIsh1fP2b2ChvJ/
	 64bkiBJZhXdY08OgdS3699TC+Lf3c1k3tg3GXwWzS7GbrdSW3WzltZztyOgVGQmg9D
	 sR/lBtBZ8umHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFF2EC05027
	for <ddprobe@lists.linux.dev>; Thu,  9 Feb 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167595132589.30894.16809421218093426865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da414c312537135790a7d6de23b79857bcad3ea088e1404f6e2cb93a8527def5
Date: Thu, 09 Feb 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675951325
