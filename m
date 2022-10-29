Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8D917C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A76C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667020254;
	bh=XLYFWx4jNYOMAfNAGSNqrfUvNMEE1S9J0mmrpbM6G60=;
	h=To:Subject:From:Date:From;
	b=eygfWBMc3ahlaw14fnPyUhfBwXDV4eT21FAbKYYfAZYjMh6AleOOmipBFMJ1Awq4u
	 g+G+Rs4p1MQxjCy5XVw4Lt0ER7HqFgC6KQvsdMJ08NbEzh8daN6OBFaKaXCksklirR
	 3UZ8Ngq8R7ulfvJ+W8a4bGfcx0bWQ/X3WxdqkeKn7bmNbWIHdn45jKLHKGFYg+DhKA
	 SF5NrTvDUdK8fTFoC4prR+r5brobI1aAof7bcRhqlKgmkVs4qe0vpWQyYcZhv9fVwM
	 JzsBXLYZMQiQdTw67rs2VDSiuO1gzypH1YszV9OLubEBS17hjGHb6T0Ofc+/tG7EaH
	 Yvn94/YlOZmQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622E8C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 05:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166702025433.14502.1427769447253683537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014f86bfbcd0eb21d4d60a0441bd77adf17e31d4aa0e5bf5cc632f1460279cfb
Date: Sat, 29 Oct 2022 05:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667020254
