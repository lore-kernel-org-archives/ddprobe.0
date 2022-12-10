Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C5D1109
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86364C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670673087;
	bh=b/o3b5MES9tnBhLknfgCAcbAQGMxdDUD8AMPPU1lFjQ=;
	h=To:Subject:From:Date:From;
	b=hEcaPwaYs4YgLxWh+mq1CIGAERJ7oRgcvb9nBWXS8sHXbDNacuM77KMh13+KHCJQr
	 MvQmrplcXK2Ba5MrCjohFMZ9I6q8RgCDccFIanJT+VkxR+gccLaIbeaU7a79NlpAkK
	 0XSh7cJEB4WJb+//EkavTqOiTWKMFQ6C780x5nkTfk+9ZyQWS9ikm9uEPCBUpXT85k
	 eORL7DY+uNgYG4LEDkL8bmEzU6TN4DXJ3fxI4KftrLlNlPSVwyDcbvf8oSP6ihYcXD
	 a7Rl3d7bSBYDpvFt9lsfEEpPNXIfE/+JPJOj8Wh0DlxQzIl0Q+zi15sz60Btv+cPPr
	 zUr3QAnKRWGGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676AFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067308739.6739.4444292539123808216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437ed24959b448a2cc517dac1793076b7c3159fcbd40a0cd676ac586b1d20fe4
Date: Sat, 10 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670673087
