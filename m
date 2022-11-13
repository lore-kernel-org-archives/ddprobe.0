Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8AD67B
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693B0C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668324654;
	bh=KWZjBIh8ZwmVqvdirTz+tVBYywJASrD6568zs98pZf8=;
	h=To:Subject:From:Date:From;
	b=f6B8VCG0EoZylclWxG8BuTwlA3gDBivs2aECkdO3JhIQ4NroR144N/8ju81SrkEux
	 c5a3BHRrzkaLS8P0XetzK9VcrXXcmRePc66/m9OOEAkEzjTAz6/sT3cebuYh65a6G+
	 j7f9uaz+izdfE+NfOg+KkjOybJCoFhlEE2YhGU4sVfN6noeHcrLRCqULEkIXW8CZ9I
	 V6hB3/yuMsc9n9iYnX4AdcChK7kIw2EX7pSOXKfuUL5sGKtRYlfF2UdPWE2Ak5V9ih
	 gfzzfpSFIACbITS9sSuIDEC8e27BGjzvZvFaNgajAKR+AJccHrf0+PIpCBtTxyqKOo
	 BPs6tU2I567DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52268C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832465432.7428.6959059004030101951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8fa3aee35f92a19c3de65803eabe12f57c4c920ac2795a32e185d347a508a2
Date: Sun, 13 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668324654
