Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6015EA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B7BC433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687731788;
	bh=/KcpsqHBjGHdMhBNGoFd2QM2YcrpkfQER5YD5+kgbOI=;
	h=To:Subject:From:Date:From;
	b=Hm9jRU66lP0+CYjgVzh/e123I1JD+Kwk5Uars9Y3A1NHQRTMNLHHiI+7Ig4gFQXIm
	 xxpUreY3qqJ1n4ZH/nWC++G04hl/jztv3zsGob47vC4IQWQl8y76OkdHcz/ony5E8C
	 i8WkW3nRn1qU1EMKlzyN7UTsXsKGnVgcIgvbUuotsd/mlLbZpyfkHdUI90Xun6v58L
	 pKSe90CsH6BYoNGKPtSuNvyogHZmp7ht0TX8hkU7BLIya5WE/nfFaF9WFpiLQks9ca
	 ef41Ss25OnD+rntGRdKKvNvaij73K7omblGJkTFzSg+/UufYJ/f1XGMPH11CE5vCQ7
	 PI6TLyUFVJ7cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1AE8EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 22:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168773178869.30384.2464346029921100327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757c4b831055f8b865d916628edc2bd94a079a85846a2d873ed05683907cc648
Date: Sun, 25 Jun 2023 22:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687731788
