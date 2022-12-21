Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EB128FC
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82277C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671642087;
	bh=mRCU1Bk5INfr5HKyPdCOLRBdYoXixCVGE4UgQehaiF4=;
	h=To:Subject:From:Date:From;
	b=E3RJFoov0r42cVNpXReFNvedYnrSR2vAsFwaUEnH6ZLJ0NGra+LrWWk5cxmWhLb4q
	 ASSxTYqiy28sEl0N7fKs3kzIR/tLzmIp/GCWNk+omoCirJEgmnhYjtosbIbIambnfD
	 xN4TTY779Md6fp3OiRVG86KfBqf2bfElmDC6huPIQ2Y59y1ogc9HwHf6SxGpAtcEb3
	 OV3y9kCHvvC9rUp1nwxTcDcvRCmF0eRWUcDUaAFF+91UdpmjLTyGXferqA9PtJ17wC
	 RNTqfIs6Ny833dQ9FFR/vUm+TB7ENHq+F8V67vIeHWjs+diOpPvkOAuiJi0Vpaxq/L
	 CJXmaZ0ekQFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B127C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167164208742.4060.3464652078949791413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6f315f1e8d4692d0e45cc4dd19392c5b7801ebe6f2310205468ca076f1a938
Date: Wed, 21 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671642087
