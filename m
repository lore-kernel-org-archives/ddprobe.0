Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEC5443C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03B4DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679652666;
	bh=+DRJ6XZIchV2eQXbGdhTbSZ2lJbYaWNRDrlZxyoRCjw=;
	h=To:Subject:From:Date:From;
	b=kiMNP+3nTgDXe+u7ojCVTP+wTw+1gAn5R2704SJGBGDSTYHvwYDPxO+6JWupfyNqG
	 CrRuf7vWF3LvD4FFHtt5SxqQMEHw7f4dcggVcDDDo6VMm/tIBIxCY6msa4+E+ICx1a
	 ZsmZJL8Ufneapa3k50TCsVTDxNjgyuvx3O0rTiDeS1KEnxnfqG+9d8eBQcDIdkHCTI
	 3l/7wDQe8wgdMTbMbwtIcZ6A2kTQsKytUa6+2gJda0WqERRepdigZ+Mx/ua2mUpcg5
	 10mQPj75Y3q1aOW5gWbX9QR6OVRMw1Ups4Nysbk+UiIRLoZI8t5r8/rGpkt0pkRqzr
	 ebWxCcR6RqTig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7044C76196
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 10:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167965266587.5665.9113584740542615937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c76d0a3198694164538a5a41325efec8784047d68a0cce1d695d1ac700ad10f2
Date: Fri, 24 Mar 2023 10:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679652665
