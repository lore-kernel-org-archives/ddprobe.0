Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4B218AED
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2100C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687302788;
	bh=dFJ0mu3SS5gcZV+RPIKy8PDoybFXnf6/bPWRr2mZpsg=;
	h=To:Subject:From:Date:From;
	b=bWDquBNu55Gix4bCkFLMP8dl3Zzgyvm0uPcG3YOpXdDj68mVTD+kZbyCnsiP8wY5m
	 phzFKQSDjWPj04eQiqyLspyLX0CEP+YbFQV5dsykxwyKyFAe3jWjUpmYZ6HG0/LEmM
	 WuSliP6oLG/tQg7fmrM09ZHZvC/slO7xiuw595/y8TUpsdMJbqfSNnkrWVzdZriDZT
	 gQJ4zLvZVAOb4nMEbTgut96LtDKbFLbfbNxdXu7Qz/cKfG8sFlP2zhB13G2s9nT2Yn
	 ZmUqVc6aLAmqXV6snjHV3nvH64BqTrVYqv4or4t8R7uvKtsbu1ycWFtOhdsw7fGKX4
	 ji4efyx/kq6ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE62EEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 23:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168730278870.15696.1765970247739060649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c81094f002abf5741702a078aad580b5496c6323c78c29a39cc54ff75de219d
Date: Tue, 20 Jun 2023 23:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687302788
