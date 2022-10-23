Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0ECB7B
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77190C433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666500053;
	bh=RPykq7nXnrrSSqWMsexocBZRYGiD04PWxhMI52z04No=;
	h=To:Subject:From:Date:From;
	b=mWUnOukH5Bry7MCHTwEOOg+kLIRM72nPondf+9gag0+pa65JcRWv/j3BeLLBK8IUo
	 fzp0aHHJkK53mr7+qf80JT9MP0gMlHCAlhJD4TbzoY2Or7wDhFeZXNXGz8wHGpdHT/
	 fLquQ3j8WmTD3G6jZtrxNyTBlAFypXWzLItIJpDfN118u111gR5cMbs1b6UH7c/juq
	 8JNDeJc5RCzoDhUbsLyDaPSUhzF1RS4nHbmtiEwMG4Nzf9vzfAIPKWh1tQNLogrjDf
	 ujX1GPOvnhe06ll6oStoNhgY8kyCaacEelo9R0fvPdtiK/qaJ8Apc6AbYEyAZqciM2
	 6Xyc7rQ7D+y+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8E3C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166650005334.15591.12946220549309154557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8397ec5dcf77470c27dadfe96070466320a47d319224b7b9a627c8181bf74134
Date: Sun, 23 Oct 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666500053
