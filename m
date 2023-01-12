Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1768470
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91439C433D2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673549487;
	bh=BhdVwM1OHXJAS9kH/l2KzEkgvW3SHRSoR9pwjFrgEJs=;
	h=To:Subject:From:Date:From;
	b=uixHbhpa194dgg0Z9F6BmWTTixC31keQCk5pyYq4SYgaNI72eUy4uxlBQzN4e61q1
	 wuBQcnnWcfvViuwM7Uy3L24pKhOfBmZuDVl8uAceWFc7y3x6Z6HmVhFos/n6DkgA/E
	 4rD2cP78ZQ2XnDzzE3SDY+L0smfg+2y+lxDwXlEBhwbaX4CYi6FuVFgdIQKD95tUvD
	 Yl/A3gUHYZnvVYdsijZVe4lSPehWNBnxQ6hIwXxjtldvqkrTp0rKVqT6yHwov3OCiJ
	 n+P4AbBTj0a0dPLUEhiUqm3XyVVXm9GUTtkdT1FaKDz69xMZLKbhc6+EPbSCSHe3Cd
	 KP4P2LGlYsblQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73A20C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167354948746.27982.6610797911679131322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9928a97fd4841d13ae07d3ca79074f86650f20b3e41fd628cd63734e22029d
Date: Thu, 12 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673549487
