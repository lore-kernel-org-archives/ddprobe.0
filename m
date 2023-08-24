Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516351C26
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 03:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C89C433C8
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 03:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692849248;
	bh=VDSOxk3vBC3KmXX3BHAH/uXf1aOK/zOOac/3EUmW3zs=;
	h=To:Subject:From:Date:From;
	b=TkPI+5bWAqdNJppDIzp8i6A3JE9zT6QJBK8bHYr4tecf8I4aDrxjLDsEEIKiP5nuy
	 nsNgZlZtU8dMLA4njIcv76lFmhgyVPsdQdUKCWaz7EPaW2RF4wim+9KF0iR0dk0vxt
	 QpXg7iskF2vW1fpssYHuchKpXVzIJbvJeam+fBaO+M6EUPfmaqOaemZuEU8Y3otBQG
	 KxAH+npdFGiKy71r4GTrheUTpIqBeoDlbCFJgA1USmGaJpf7vY2f8B93HXGlaCDDDh
	 ycLeSgeAAz4frKRA9pfM1t/nBNCh3zmKz1jgaZuk7HxCX3AkvKz/VPNp8uJ59iIWOt
	 a6CG3eC8/dnXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D8DC3DA6F
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 03:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169284924867.17589.11489743122071896945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3220b685f4262479f4884fd4ebc8781f1c0219a3b288b1188e169061eefd6f66
Date: Thu, 24 Aug 2023 03:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692849248
