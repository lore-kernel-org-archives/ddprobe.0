Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA6E408C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D854EC4339B
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686335765;
	bh=Zg1JEBjlyI5AzUPBQIn/YDRQz/LJdZYGZIBR8xS1Z4E=;
	h=To:Subject:From:Date:From;
	b=N9a+9Ska6hHCgfAAXyK06KgqkJnPVIwVtg9/scfPOCIbV/+d6XtTUMHbJWFH9JkJf
	 g9T3iXD2JKp0zYyYyFiJT9pJ+q7NbvOH2pviE7weQ2RV4sEXfe8rIO56svnwzN83x7
	 75myffIlgo3Innklo1yVzLad4IVZBPAb3GyBkr9iasEI/oQw5V8aO6VPIxBCnATjLN
	 XjKTr5b/l+M0NMGHDnnyPnSlj18+j1EPwa9suG04dk6LKAYPmSE5taXfd2vTdZpX1u
	 f82NFRE82KiUxr6E9Q1HjquTYYWOXGnDKs803OO+groTqbjy++irjyiXTdfJFqTkXI
	 R86z+IXbc/ogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD25DC7EE25
	for <ddprobe@lists.linux.dev>; Fri,  9 Jun 2023 18:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168633576576.15142.3986335388630185285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bf5f5c29155ebabd6c5169bac5fa15a9a5e3158551cb6a9decda7581ad30d0
Date: Fri, 09 Jun 2023 18:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686335765
