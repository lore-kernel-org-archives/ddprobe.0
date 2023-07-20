Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BE92FA58
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A75C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689881528;
	bh=SpT0A6hsuLWAT7X+UW/nT6MUR3mebQFtvTrM4QVLT1w=;
	h=To:Subject:From:Date:From;
	b=jKl8+tXuh0Bfo+OaWmz9cjv3eOs3Zx3pU4P7y9ibBBg7wWRAqbgQi46DBC4EwP+O5
	 QMfsmbFm3pUUbzcwrppEec/DQXfy3Dkwpi6VprDBBnbVabSnQo24i8g4qiuYxCQwDo
	 sBn67jcl8kZQmJ+/LdzOjNlYcXbpbuZNUhoCv1d/epI9KHlGTUR3liQweydDTtNC73
	 XM98KFG3r5H60xzvW6jUZSUEeWpXbE4CgjhVoLA4lX6unoBtJFRspqQUMq3yJQD5tc
	 3s7xGmD6PeW5i6Jmkf7Jf95ZWwzPNBt+etKo+9xvvjpdfF1t3fOtpXofhbU7K1n+z1
	 mvRA285kjAgMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B183AEB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 19:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988152871.2824.6051040559400786022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa2fab847bf4a5bbdc972935f66fc2b167025e4981877f5bdcd35f0b9c3685ef
Date: Thu, 20 Jul 2023 19:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689881528
