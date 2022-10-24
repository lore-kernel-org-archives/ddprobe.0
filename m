Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05C1620
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71548C433B5
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666575053;
	bh=k//PO30SiKjZV+ADU4B6Om50F+3ys9m3BRQcrRrIyDU=;
	h=To:Subject:From:Date:From;
	b=jXn2GZGhA1b32IzFu/d2xPBOZBJ0Kj+zWwQOEQ+Xh1LwamaEqxQWmIxUyTxoIjoS0
	 wM84OMBMtNuDPXIE9uQ2LMujfvtd3WdaThrmZ2DlzXIEgU/G3xAFOUCNK8M7N8JQ7g
	 KweDCXwJZnVbo6y2yQJZ6u1Mp70bCcpg7E1FPOoOZ/Ae5rZesslMKuIh1Ul/yvTqsh
	 XREFI7WnN8QxSC5QZHVOhPU2+PyUd0BJsqMQmOFG5LA3G+qZwWrxjXkt3BBE9qMKCt
	 jxXALBXaHAkjsV0UsuQ+Qkd8zQjWGJikqAI9OXayv9xHtKH1LvLjkaSraVEeWrm7pQ
	 wrGZMciEvDziA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561CAC3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657505332.14333.4895897531152870645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bda288f71d26f322089e909813c3b3991fc4ded63ff42b51a6040278e719b835
Date: Mon, 24 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666575053
