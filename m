Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6272F2C
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94176C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671646287;
	bh=aQw+4y/M5BEL9V5vC5XHXb5ZUhcmUJasZN8S0Of2SR8=;
	h=To:Subject:From:Date:From;
	b=YtoNGzRYKeuxMHrxpg+oSusx0xeTwqHsRdF4+ijkt3UZhNqy3vYXbD4PKYPkOSO8Y
	 66OhFYTWOSQSH7ODchIuG2vWPReROrigydMsuefsLAaPq1+zRIv+/yPfKc0JmQYzXl
	 1HTdZB9os9loR5Ts/iBHj2aDl4tsIPJ5/vtkClqA68F7KJWZrqtQC0zX+0+FAcZGvS
	 TyfYbI9xnNHqslhsKcwYDVhAi7PmfHZ03icWotHYC5pVZpvMP8Sbk8h3M2yH0FGeNZ
	 LqWpmTQVUawb6SHe39YE3TaJ9YcctanBBMPG9coK7yvGwNon25uZXlaeJnhLk0kPBZ
	 dntlAxhxgfVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9A5C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164628743.5671.18033118155484851488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a04e25ff20cbf44398ab4cdedcc9301268f8ff320a1714533d078504b1ce50
Date: Wed, 21 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671646287
