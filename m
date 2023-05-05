Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FEE156EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 08:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05DFC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683274625;
	bh=adQJy0IxN0L5cAnx8bK4RczJ1k7K9Tc0139Q9eFiCfg=;
	h=To:Subject:From:Date:From;
	b=f3p7sEE8Zaevc+cFfwPjL4/ATkGV8nQIgGON6QJ9EZGgCla2Ox5ADNQskrv7ocn0I
	 43x2pSEKxB2f+ndDaoJ7emfKSEB/2qT5rQfy34pQRw3yxmDLaY9Uu75bEMRbWXSgu8
	 wxO9pyk+aZsz8LKmJFCH9G4KzSM5CYjG57llb83N+LFWolls/JJC2gTsN5r6v5TBtq
	 8MM2IRlt7GSwle5GimZHe65E43eq7WqmLso8ADya6JyQ0av/P9KWaExkZW/WRtQqO6
	 5a5qd+tyKVZAL2U5hvKWD5gmdA38rd2YZxPjM60vCorfW+d83jVf49hwBxnHq1a/bc
	 Cd7tPKKyGclzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DBBC77B75
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 08:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168327462573.693.16102138810830084250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80f94578ebd40f93cbfb01625672f628d1c14f03fec09c184cc66a3a66dac1f
Date: Fri, 05 May 2023 08:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683274625
