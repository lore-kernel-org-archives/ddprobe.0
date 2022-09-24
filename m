Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AAB7B
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D15DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664055653;
	bh=ULTFrjgLggP524kAEl0iCG1QVgrxNlaHuLoIRK3RWAQ=;
	h=To:Subject:From:Date:From;
	b=Q0mbGylYvU8Ve3513wrsL+jTZC8xvWah45A1Dw9mQgmGYK1h3YtWs+iqzRpDXaOlG
	 mmSrxAaimPszkIDgmbSq8/PcmLPQndjIyJh0HT1v1QiV0RjBV7QCUcsaXaLoYSgyJW
	 KuZIr7ouXC6EcxmCr/dzeojLK7xmzoh5q6pGVwdA1kxiRvmWsRYUipFFmmJ6C3QuQc
	 W5r/rVD+c2SIPu2TW5coz1PJ4uDk9UPhAo+lolazBPGW+J95hUxJLFVLcDmjxEvBJ/
	 GFwq0jILrQO4GyIuY1GTLjKlFofRvBk/55zIw2dv6q0O4BXVMZBJ/BbwenhCddmAZL
	 yEFqkS7HW1E+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536CBC32771
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 21:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166405565333.6820.6618072819610560980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105aef0a207849cf5eed66625f3cd432dface1b5e2a8c6d5ae0d9bb9653bd8dc
Date: Sat, 24 Sep 2022 21:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664055653
