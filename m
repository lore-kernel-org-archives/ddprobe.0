Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A461C20
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C789C433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666929654;
	bh=mtwywBn8WwsxeUXLiA+3L2o7rkP+Ucxh/DwljmE2dXU=;
	h=To:Subject:From:Date:From;
	b=Nfnm5g8g8QGSWQa+HnRW3Fb5B7x823lWxlAUp1J831cuK2ehA64rX/CHT9H8iGitp
	 t3myeh1IAxmZm7tjOld9RUPbNmNhN7pG3kXwY/NUX55WoUzNuQZxZ3Vh3Qi4/0UA3J
	 vMgoIWbhMCtNsau+Mk5WRJ0u9RTKNokwMAgROFb1emOVPjPWZC82AGaa2pE0dZn2zm
	 IsUG8fgr1xBm0bl4cSh5DYA/WhXOa18W8AvjFLKsMr27GIxu76eqTWfJ8ICypTF5+b
	 AwwG07D/xClDZd8CzF8Mm0wRle8FLmRwuuG5qdlZTcoa4WXC/biTkdXVPfRnYq9dY4
	 PXYilpjUeJD8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E34C38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166692965434.3692.6657162798552667175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a816062162a1dc423a08ed8bc35bd6cd17dde8309ff99d6298b6d79b0a9fa3e
Date: Fri, 28 Oct 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666929654
