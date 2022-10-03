Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C40CD173
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB83C433D6
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664755853;
	bh=TQeTXjkhxKrtweXbmdY75ZhdK7aZFu8FRezrA6yCYs0=;
	h=To:Subject:From:Date:From;
	b=BnmCHfVV/lJViWQu/OtUbqo5xOX2H6X3+3N4QK8OgzLCSFj755c2u+3Pasv8HUax8
	 k4b4kLIBMekp4srwXTJBXRqrwF0HjDrlT3xCM2rvQkKcxMKxSD9JTkNhWKwrSQ17Oy
	 SM4qspFvEkGKaksQKzLEh7e8jHfnXgR0p+KWp7+RnR7pOpOGt99fdncIXOf3aPOAo3
	 MHfQpvySg3b2Ak96TrJ1KzTElM6Kp4iWsNjvDv+U3de80L4qN58RonkZl1jGELNTsi
	 NZS3dsE69kcmme6/yQKQ+ZzoeNKd9+USAJ+dcwhYavqE+QraNOYsPZZLnuX2pG7i4p
	 hhLmc4Q6ywfxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FBCC433FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166475585333.24762.14230407764223528600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 562869e5b6c1a8471fec0570790837082aaa7304d475b6451765cc71c917e5a0
Date: Mon, 03 Oct 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664755853
