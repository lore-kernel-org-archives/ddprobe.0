Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC0E64408
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757BFC433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669905054;
	bh=Z6+JgjItcFc7wFxX7IT8PlzCR3FlA64a7jYrqsMLmLM=;
	h=To:Subject:From:Date:From;
	b=CPkkfyfeCSapR9qFs1ieauhCRQUBqzeDhn6ddhSZeSuHmGD9jT5qQvl6wMNpnWA/1
	 Xw82gbntbqEqjLftZEGKizcy7GyAyD96ZgVcq1H2+1u7/KdA43fFazPs+t79a69tS4
	 A3X5DsntYpvSl4DU7jdbSCzaSWZ+EZHWRv0P7kGb+1opQayJFehW4Qw4BtbbmpquSU
	 Oy47XvPy6C2jfVDPglmOE4iZlD1QFxRXmexkqnuBRTXng3raFCIkq+12Py/z6CDzSu
	 xZ7Z4/NlUDUihDJSu+9PcdwDOP+LDd2/46gU0o2192SyRVet000lju4X13apEyqlci
	 2wahR4G+i3hbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58946C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 14:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166990505435.26445.8327623321291810137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a76cf5fe93565e77360d4494fe75ef702c85a0c7599a1c5ad9bfaf12ad3a1b
Date: Thu, 01 Dec 2022 14:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669905054
