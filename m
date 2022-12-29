Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE46E8C14
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E967C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672356087;
	bh=n/gHM0Kc/s7QSobJLE4qIpVHDWTcm0GUmnB+y9wjakY=;
	h=To:Subject:From:Date:From;
	b=ZuadLm+ss+gPGl3RdiFYQqlegt/270yraIM0YqBiXmLIypRUR2eIW/G6CibKrwcvD
	 zC1yUxxjvdRlskY0CbsEpw/7fdIJOdlMLyXueNzSOHcJW73lIwPPIY1fVuNh4+AxVM
	 UiDLpbkOslS8XOOixbWzZC9/5TM0fjCbRq4WYOwVFsJx2ZJ690rtZZB5LkppqHIBro
	 l6Uyuu+ptBXIbCYneGp4J02aqOfwUF/3sUgzpcsoUFSGzmr3cZxWA27i4/RP7GFa5Q
	 vwsGN0ZYRmxvn4D0wnW+ta21K1S/gL48IBx40IGPq6s0HL0b3QD4I4WKmg3cxGqZv6
	 SxQvJKRXux6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620C5C3DA7A
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167235608739.15771.3451708247002401144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abe918d1422e44defc42273aaa50bc4454713c77faeebcce15a916594944bdbe
Date: Thu, 29 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672356087
