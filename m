Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E211D2F22
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8825BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670864487;
	bh=ENNeXa3I5I2q1zmRt88iKG7ISpOZ2FDfM0PvTN4k0pk=;
	h=To:Subject:From:Date:From;
	b=fp4IcTY67CqN8VLvCTvUpiCYACKvpfBhbLStb20jA+vhsZGe+tEMIcrLhBa7BT0jp
	 xREq/B7ocuK8PmOyOaT4iRJ8F734+zZEBXN8BynJbGUtd7zsUgs5Ex3kslR0P36aUO
	 rmYMzb+q/fIKV2Mz1Qb2QjDanl3wDedHeeGZLK1vFIbwL6fDjNeXGnVKYWlyU14Ham
	 5YJYAqGYsbv5QjbNUOxR8LqBcEELzZIkfD9kB6TCy0n2eMr1FQ/O5evepGLB8WWlUl
	 CxdblYeddaA71jOGMDJvZnZEX5VxYOX797P5MDT5AZcFtVZaciz92+IK4WA2BF5NBN
	 qz2/WLHBDVoQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DA74C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167086448744.18108.13419759702586966984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f66076286e30be41fcf27eb8b26ea5200a77653878e4797a2209807993094885
Date: Mon, 12 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670864487
