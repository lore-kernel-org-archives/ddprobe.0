Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFD47C
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 00:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CE4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 00:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689209348;
	bh=nbRTR6fCsQUDvhjgyWr/QNhdFbklS4vXoiEji0a5aGQ=;
	h=To:Subject:From:Date:From;
	b=VMrMkmteIDDPj4g72FnRBggWYWSwvmPpaVKQxWafys2swNrPpJl3ZVFi+vM85mujF
	 6QfEbHpCQy2dOcl+2ALmjKOUfw3Jyv4TQcCaH7KMMbrbnjYjasxkzjvGnpxV/TIIRx
	 17Diq6oCqPHi+avUm5LGGhYXD6WeKX5gcsl91LvN+PqZFdnbZ66agnU2OQU9U6NAw+
	 74xlKl97Tu49AKgSE7lLPeWL3UOpJwK2ki11EW5+W+ONsU7iqqJ9hun3fh6OdkDkBY
	 qOHpnb2dsrGjoO5shaLyF9fYiYK//FlJ6M82vg9qe2E09XTFeOrfwcRCokP0alR+6Z
	 F9dH4BwwT3EZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B8EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 00:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168920934866.13532.17674863329706746340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc15f567e0192fd2a0fcf53bcae574f376f70366663dd71c6e9e63366e0d814
Date: Thu, 13 Jul 2023 00:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689209348
