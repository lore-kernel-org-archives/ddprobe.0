Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB30A7E
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E569C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666291253;
	bh=jjnVust/xX54c1qxieRnQ6kfhnfqpPMQ6ZDk5Q5x9lM=;
	h=To:Subject:From:Date:From;
	b=N2WdPabPbsR4HynGTk6wGXl0NCsS9j1EhwKnRuCWxrHFC6VTulda7n6LBTGyo3tY+
	 rMCzCsX1yDlRkFciw5uw6RLte+nJz+n6yZ109dDI4ZA5LpkSL1IEexlvR/lXQR/ITv
	 A9APKyZKjO4jukMOYc7tDN3LaIRvC/vlYRyxCGePXJpLsxVf2bRx+ATBHPYgHZCJDw
	 831gPG1kSIrykTGeBIp/xloB/LS9Xqu15RRn+b7AJY9LYyrnc1ZHIOdvKrLruZbTos
	 FGMouTlm8BGHUmHsHZ2vrYhugwC7046XCkGZhPKydtbHZ9Hx8NNXAwWxgI7gAqEym2
	 8rLLVML4Tx+4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57DC1C4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166629125335.20191.768021915161591708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4c060cb6cbf62fa0c680f046704df1569f5e81a97cbcfd94a09ea0bd84c70a
Date: Thu, 20 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666291253
