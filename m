Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26605A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691A1C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664565053;
	bh=Ltbo+8d36/x0Vcra8PqPgS2eyHLdkvFkfJG/YG9ZrZk=;
	h=To:Subject:From:Date:From;
	b=rTkj0q4rbUtBCwb3exTbX87qPzSfh7Qh5bl7sdGROy1MJpnoh8w9UfylI9p3o0mai
	 rzwGBxUxF9FW4VMbCfo7wG6AEBYJmYUPDVCcKhFMF5xtp8v7Z2aj9xebgQ/t2F8ciu
	 9x0BX+fgQzeHuFSDiYUr06/tVQlk+7NK9C0N+1EvcKv2Pm3h5xgDvvXbHXNam8489e
	 TWemErUa5Ktis5Eel5N2bf/1SRa5ubNLQak23D3u8cmMKDLGS4O6Z/cxJBErIPVRQa
	 zboyBwJLXfORkMMEJWwtCkHchXQ1K+HAJge4puQVf7GTnoVQSYPONCvtyVnZWXhpUv
	 3gNMvn/FtKGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E634C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456505331.29660.17963168603342509562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98f2e5a894ded11f7f26770543aa21c861366920729bce080610cece5be48f1c
Date: Fri, 30 Sep 2022 19:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664565053
