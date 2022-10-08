Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D9E1114
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B99C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665229853;
	bh=heC4mMCF27oEghzsjEwPIlpefw5y5J6H7xPMDXg0SLc=;
	h=To:Subject:From:Date:From;
	b=R5AJpYXEZIVy+AVh+s97BMmoeArrcv7vnVlQle04+nOqDtUSdFivhKFEEqSlvwPMs
	 DG3etrm+LOWr8tEvnQZkFTM9WNtQj8t3N8hdmff3I9i27s1OWKBFKwvN5N7S+Avlk2
	 U6nNDpbit26ys6cpaiZKAF0jmOMswFay/d+yb/W4MpLJboKSgzzCxAfB0gKuY4mvM3
	 mYAu6q8ia/2GhxUG3zgcECbM0m+DTnIRBeVByTFy3nUGQJeGKQbx9Kq/WzZ1jr7YCn
	 d+nbLhoba3bht7h7+o6sY7vH+HCzrcXujwYqb1bStE7LXByBcK+pTAIOcHJONpELxx
	 FHHNmXVi5s23Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561FCC433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166522985334.2746.18408015982942406148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd93ab726a1bb216bd47c50d915af054ede376d1c4d40dd6f867377890da016e
Date: Sat, 08 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665229853
