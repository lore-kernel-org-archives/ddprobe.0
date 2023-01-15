Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEE410E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 900CAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673778087;
	bh=i5WBWfCDLw7YfYVLMSO9YU9Lx5VVxFdCIW/2sc6/7/s=;
	h=To:Subject:From:Date:From;
	b=pqVzwT4rjK8dSEvsnKiy/ZBg62ilBR5TczZWkD9fa3YoI1YBF8sBto+kGcPcizGRH
	 o3X18btJ+cVWTf2CZPIbuQUEwuZHs759fD5HsY4LFVhsqra0JY3PSCFON/kItWFds9
	 S9B0GH/bKfOhhAt+wEKqPcmvZEYJKXzWvHFDiR/qKa6xN20ep/gISULJluvAHim/Al
	 Wftq4ANNoeMgt7Ix+Z2Gr6au7pag9i+l/3myxGtStcspoqTH/vT1riELn2u18s5Xxv
	 rTOFgA4Vcj2i2fisQaIdq7vKUyZ2PkoJeS1lzyJ6JxZy1IzDVDfMESA+zegxbBcEst
	 hxUduiH4C3i1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EA8BC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167377808742.9818.17055681209545535912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b32ad0f1fc7ed22f5300ab30b1f9a41a9584a55ad778c45b676e1fdfd12079
Date: Sun, 15 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673778087
