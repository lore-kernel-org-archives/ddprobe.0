Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBBC87E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC36C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666341653;
	bh=iGUar9shO/CgZnu876gTdZt8Y7/O3/9JDc6DUIFtT4Q=;
	h=To:Subject:From:Date:From;
	b=hT8H35U4D4G14VvSnkiw7zpsLCQ/sOTBRVDpeBqlJRJZsAsKpLq1CfbL1511FMPUC
	 ebTObB2JoKPc4cGkd1PO/Gzxomb/R6d/0TrWC7Nm7vH2ARdeGhJeJKQkTS3k9fEI5C
	 sdQVurxoFJnQwxdBuDGfkKNO/Jv7WgB9IVaFcBLRRTYZEzOHUI+TO/tv26Fo4gBrN0
	 yGDHAwJjOJtRkky9BkJvYEByOdLC7AIcmkPRVCo5Mn+oRY8W5pGTnpfDUIsPxPw8si
	 zWHVpmN0uxDD4wYfiMjQo9lfig7qa64zI2vzAzaYSCWYOEPwvDaZ871aRIH9c0OSDi
	 8ZAPJXc8F8Vsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC30C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634165331.8536.2360866153707608075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fef023e94368561f9939771ab14b231ac65c188c96e00a8ccb07eb7536d1765
Date: Fri, 21 Oct 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666341653
