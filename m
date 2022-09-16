Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0312F7E
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0401C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663287053;
	bh=zDJAyx+mJYHLMG2Gg9sRcexN90gaexrUTSoRvkqFRgw=;
	h=To:Subject:From:Date:From;
	b=KwSU1S3Sr+t1Z1KhOsaqXtRE71Sj4vo3TA4dLkm7TZIpL0VmLWaDLWDXafjERAa6N
	 vzxYcoYKo1fFXg3vHw27PHvBdfM3lakKmddl+gUFSiTyeoeoJEFrT9jafyPSpRaPyq
	 ggUV/GJVAwIgLiKI+n9zJAXkXQNBByd/DTClmBWEGTxFctuUx3NF73S2sDwH1OiXlv
	 zkCmpDB6woFYs0RYhHXb5s10hes9Cb4ujFukNbE3S8VMVbaxe52D00tWyOplYBgvo9
	 6zQ52m4p2ETskEjgeTav2tzJJ+WSA7Mgi5ngHnYOyp8VVYwWZjvwRqnMHsi88qjvKJ
	 Vx3gLI1QgE9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 718E8C32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 00:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328705342.30742.5511329588510510094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a7ea67cc5787c0e15327ca3e9c92b0852241c603141ecaba80781d4f44daf0
Date: Fri, 16 Sep 2022 00:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663287053
