Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADDB117F6
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 04:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 173D6C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 04:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685851746;
	bh=pP5V4P8lh2np/QCN37Jqimd1Ka0leMRd/1oxO31kEUo=;
	h=To:Subject:From:Date:From;
	b=WVNB6iqThPb5Xq5IC/A6AuAa+2+5ocHySeDQDBiOTzvib0oSjX1p6KeaiyN5fEMPy
	 IcWilxuwvvtJsFOcuK9fRXBldyGCI3DTxOkxwSSIDqI7GLpDUdZGZNDdTPHZZcItZ/
	 lYv/2vfa+X7x3cyhR+i9TC2n+7XZz1YAwylP6mNaFGVwHWjSMZ+IJ4k0FouoL+k3Uq
	 filERSqPEQIsXTdU6YQiDBFFwbrJEuITp8OrA00yXLLO4ZglJz6Xm+cKYtHypD7h87
	 mSyQbnWnq4vqosuz/HmZuxbCdoIT1p4rfGVGMSwr8bfKEQZOOrxqtjucoTWxqT7f63
	 754V0Mkp3hg2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E814AC7EE23
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 04:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168585174582.9975.6009100757901635125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f337f8900930e267f24baf94aaf14fe7c22d3c7a51772850f8b8404ed34b60d
Date: Sun, 04 Jun 2023 04:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685851745
