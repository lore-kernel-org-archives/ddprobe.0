Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFE57E
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00C41C433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682932686;
	bh=NbDlvGu/gmQxZvtYMWTmasjoKBB1Yj71+qkUNJ5JcdM=;
	h=To:Subject:From:Date:From;
	b=DspMTwM798aUpgWLa3QmtUpiuYuRir/XWpphMqIz/R9P1Zr7YJFUfwHGc08Bx+XNF
	 sm2Lwvn5AthhMxKnO0Lr+U9iAi2zf1Xac1MFxfnHteB5o4+9rSxGCb4gMwIIRrtAhN
	 feKfubb+dhRAypYwjqlh7BTZbd+XaNyUuMvboh26hC25Rj2a5elqQkz214KcEcfLib
	 L1CN3wreUIbfxQSf/CLsoRkxkkrswPFtRJydE8KZqgrkrCoUaT/P2H8Fs5Fe995JkP
	 /cVuAueI1mxG6ByK69uuGSI8w+8su3hO5GwQaP7IRfQuUH7XGug8U0psDNWIIms1Dn
	 llxhUGvVDSm0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCBC9C77B73
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 09:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293268576.9078.16860800033463086034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c157654564adfaa42deaaa2a4cbea616d665ed529024776576cefa4a4246320d
Date: Mon, 01 May 2023 09:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682932685
