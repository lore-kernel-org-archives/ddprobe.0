Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7742599
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F09C433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673255487;
	bh=H41pzRDlB/S00Oys7tAXW51gTDxZj0kFRWiUexKTsaE=;
	h=To:Subject:From:Date:From;
	b=mXHMzxCMNPxq2xlsZEC4pZ47oJE6IluWRJB6lYfOp6YDPr2w2rJ7U/dCkAebK5H2q
	 Fmt4XrzdafEpNaX4wCkwcz/prYSS60qRg+cgR4Vd/0Gtc1slFbGVicc3B0iKxfeLTc
	 E2QDOfuJuW3EQ+fwzJJ6ZurXF4mGP2pNZKXUi/cpLvos7yac/UZqoSHgBDTJ1sw/1K
	 /Ic/3W5quvAQED4GJH/NNbcpQAJirJ7Xu/MCQJIekXPzZrXSqzRMBzWW/LQa5UOcHL
	 43sgA0y9+XmmAzWdLVdix6LXknIQsI3T9PIKk5Vv9W8Vgh9P2kZnQFSNfuW6Bua4uX
	 bGrHJyfOPWTDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDABC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325548757.21701.9758985133573571205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8d5050746490fcb462bfe203180c6be11372312bd8ff88888a85929e71573e0
Date: Mon, 09 Jan 2023 09:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673255487
