Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E7E747F
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2A50C433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675800546;
	bh=0VpN7Du9X5mFziZCU9fvg+A2yxCBK81UBRLace1AtY0=;
	h=To:Subject:From:Date:From;
	b=cvsLrhyL5JPQOVPWzQVJBNgP/Afoj5ec7DBTuBWCb8Ib555cgrmZWgADACRxw4x7b
	 JVgRey+TXZoDYnLQssVWzl6KcKRX4hH3o7mzt5KRbTVutZXGj9Ao/Qepxe0NGWzdde
	 ObjatboZmsqPtTsGg6E8GLjDHTSLT1RVGRS2tzHpYntDxznhNIvenQsEmcB5M4QicP
	 z/fV+BpQ+JbcZqAOOrp3HztCgBcvANyNLHq9tlufm5PvBROFpX97clwQ/TOEYkf/hs
	 cgGxqzD4DbSsWqwHsAV4Ume1ycH18rD5hHsvDXwOPTffeTcY2bdONFcpBiAdVzyt8A
	 DCkzXMLhCvRoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E1CC636D3
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 20:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167580054578.15996.5355936128237319036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4ce0099493805ca7556e4f97cdea1aec09a8ffeeec96cf78622fb6bcaf2cf2
Date: Tue, 07 Feb 2023 20:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675800545
