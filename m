Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE063208
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 971F2C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672700487;
	bh=/KLrvDdpQKJ2EeqEuG/7XxYwoyZhPjYUn6M/BretkU0=;
	h=To:Subject:From:Date:From;
	b=RFLUfWqn1ycpOPzQRxpxvCd9G34xI4xTxIEjz/XCGN3NdYbcafZBXi2SiS9vSl2Yk
	 zV2NYMIuXPPawZ6VT1cVsFwpwsJ5pKsUS+yVzLtA037776EMX49fBMIiv+mGkioVc7
	 oLLeL2S/HMpbH/cPlStgrjlGXCkDOrnDwQLzCBDtP2M9HM+oMTuHMyLENx0YdwBab9
	 QBgiNmddoy1Vnjw4LSPQXvfZL+YdsaxeJ1mtnnxLWbRYiZuvmKwTBQS6qTSoElyH7S
	 xv7xyB00EF3gmJF9TPpIs3fbWDt73+4V41/O3XsQOwKA4TYLgUzbaXvIlPgTsThWSQ
	 25aVd5M13D07A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71E81C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270048741.22207.10720301291667785937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89aed7b0e755185446ae808bd6ac858273cf0222e79d9036dad901b7d38ac7f5
Date: Mon, 02 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672700487
