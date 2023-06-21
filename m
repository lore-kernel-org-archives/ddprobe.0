Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4772819BD9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C3CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687390388;
	bh=qTQZDvJsp9/FOJHSAe+3MXYMOhYI4oeL+eeh2jq32fs=;
	h=To:Subject:From:Date:From;
	b=AVFieOVRf/C1dJU8aotn+RwutNlqm8RTfS7pIZ80EIbgyMMxRN4EEHTxXju4khplj
	 Kz57PDnSHLqUOaVMTit5ZXGAeWD2P46prMOdMLvV10setLTHoZcDwgbIGNwH/JM0r2
	 yzoAMYmwWeXNHS0+hvYTQxtMBDUY9WoxDFvF8pgjPrm2C0kAPFVi61TW0naEYpNy/7
	 yw2Vq1ayN6W7biUtkxbYMm34XQ+PJqys6wqevKdQZBy2o48GEeEpTgpEQHInBzSjcH
	 Tm2Vy1l1mUF8Z2z7ZPbsSEa0V1jfBRHk4X8NhnHe+N39E4bi0DTA6ajRUxTKu+tuN6
	 JWQKmNRC8pIFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A852BEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168739038868.18641.1387300196226291378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a92b7ac2264053696cd559df76aa85cc937f8c4cb36761cafa7515a8d255323
Date: Wed, 21 Jun 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687390388
