Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7673D7E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE34DC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675096986;
	bh=SwGxx/nsb99XNtJrFF+5TxiwAszV/hzitjB/nO8Ektg=;
	h=To:Subject:From:Date:From;
	b=Q/iOV3IYESep0O0M0rJBsuJlfCgw5hIvr0fAUFgMCn8dUf27xJrqDRW2xjsMr1ff2
	 NlRvKeDXQKhptddamZAZEt9vr4p0d6K3uigjQ8pITq9AE3SwaXYVnocX/8yKwqFkkU
	 k43dCw11NJO9qGp4Apf1GTy/eSmvA9/kTs6FkR7zpjLySTdpwGZQnDsaGRV1KiH/5i
	 MlEby2qq3T6wrkGAduDanqiautZoI/f7mi6ulO5FEhXikUZ1YQz4RugSUZBzXEeM//
	 vJ/RKviNnYkoYhYrqDqSiNktZRm2CumCsSjncnGbiX0q0mFSFtdMb1Y4WdUas6Avy+
	 Dxdpv657nEsGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B24C54EED
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167509698584.1370.12517502041687743903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cfba19a153adddc28b80cb6ebccb68e338bf1df130c80580f6355140208707
Date: Mon, 30 Jan 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675096985
