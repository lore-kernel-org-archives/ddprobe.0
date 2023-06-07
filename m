Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EF514AA5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 15:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC212C433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 15:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686151925;
	bh=Dq6KRW/BDZ7Cu3hyPG2u1Ha/QBDFTXTHUOwnpCDcT50=;
	h=To:Subject:From:Date:From;
	b=TK6U/YVyvFrlwK8yZgoFaEVcTKvMQtYmmNuZqPP+EFDIfxb9hYhLoUC2yllNG6PG/
	 CrDK3a3ikS+snFTGWDDU7m5oDP+oZVW+bVHk1FssE1tHR625Txu6WdwD3r0Idzg2b9
	 NNO4IRS5hYYdC/vF9XJ5ODDUbD7wXnLwEy6kHmqsWHIvT4NmVMOQ+JM5/jjyPV5Y3E
	 eySWwQJz3Xc0GgcPAyUKSwKCIrGvkM7gTG5FxjZBHUDfJOA+yPn/1g2nC647/XYg7r
	 7E4Lvvc4XAXfbEcktLrWtLdbW7p+J5nZrpdlPzTYmtR+PVWHppP+3y2fbK0w461NFi
	 VpsOVU3BEq7nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCACBC7EE23
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 15:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168615192576.17662.11047719681105971259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d883ebd2392d1c0c67cafa9acd859174eb5acf2666b81bd58b8a001481fc13e
Date: Wed, 07 Jun 2023 15:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686151925
