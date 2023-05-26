Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F5415B7
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE2CAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685141766;
	bh=KyaHqRVy5el6FtPCRVxBapCTm96zVAfXM7Bnzlq4jb0=;
	h=To:Subject:From:Date:From;
	b=RfUtTuTklhX/uo85HtbphYgBw6pPV7SKIxh2xNTp94jmrxSGgdPZkeqFIrdUeet/j
	 KXXRDGVkRZohW2YJz7U6XRRGthQwFCd9FdPcNkkkMozBRDCIz1gutw/Rkz6UJiSYCF
	 HFOlxhIIqPsRv6QY8hAS5SoW+grEH27YvUAzvceHsWL3dnVbhKqwODZ6yDNAOjrPzm
	 jr2dY530bIHsageZDUusZW51+Ybw+G7eR6UFqK2stOK91+XVClcSGtTditbHyPq8Fb
	 xNskGX1mEiXSnTbKfPqq7kJTcA72rrN2F/I2mR8kJwQ4GqXGDVlJ22g3H+jn9TH2Br
	 54uMsV9XeG0EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF44CC77B73
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 22:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168514176582.27808.2162918879385881671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb6e125f3888e004e6ff82803a31cd89b8b8e0a4e78fca0b3cfe939059f56bb
Date: Fri, 26 May 2023 22:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685141765
