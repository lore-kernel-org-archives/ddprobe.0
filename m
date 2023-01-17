Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB35C1FA7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88058C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673941287;
	bh=gDtEw2yqC81KIeSUVGr62UaZremvpxIbqUKLCD/5aUQ=;
	h=To:Subject:From:Date:From;
	b=dQxESRZ/eM8mEzcngxoXkB1RZXDCM1ieeYe4NwAW2wYvVoSkmpkJgqjANgjcERmLL
	 FNh0CQGSDouXBlRA1H+6KZsgS9wt8n+rse6fDO7wpTCkPAkn/Etpf/fu1+OdS2O8Cw
	 bMaY8fYdAQlS8ayIAvQlsJcdcJw/ytd3JFtNa6jE9ogGVVAcRHMOKbxmncaTgHANEF
	 i8okAXnFvviijn8a8Mx6eBpozBMtdKpvqDURsNHvpB2xjimUzVeHGlGPo8GjGINadd
	 OP3oJqm28233noXwQMO3r1lWtFHHfztm4A1OyIttdyNVBaB8vgkmPaC3F62aueOUpR
	 lLSmLZEBVGplA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD9AC3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 07:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167394128742.26030.4449856335333419991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e46ab70b3f2dde456323882d1d0595cf45a0fc1495be68615800a88a8ccf15
Date: Tue, 17 Jan 2023 07:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673941287
