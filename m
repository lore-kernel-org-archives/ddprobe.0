Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33275CBC
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 805A6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670942487;
	bh=AZtkOPiXrkn4xsPlGM7ETUBw7FIqbzHVpn2mX7qLkwg=;
	h=To:Subject:From:Date:From;
	b=OVs+Ln969rcqeXY+Acghg4jndKuoLoTyBzXIClB5q27RhJ4c3TL4Ge3XoXuXEJ/Qb
	 ubIaTeFKH3oHA3vmrGiNRzydoojuUP21s012zB4F8tpfm+bf+uSsliHhCSUHH0Ex1k
	 2Agje0KQgok+8dVsnPzh9GMfCcFh1kg0PX1o3c4wu8oJpvoXmGK7R45GTy8ppGgLS6
	 uqWrzZRFLGu5mZZhU3kqObLty1jvJC0xlxBIt7YnoLgRyj5B58MQSgQbiGo5vU8MnA
	 8LBizc/jcPqHBGuIXfe7iQ2ftVTvQ1M5EOHYRJDdko3729BVx5Q2v69sd9gUb9Lrhi
	 i0ayMitlBaNsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63808C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 14:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167094248739.23169.7332676476221774231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd6fb9443300c1600e8372d6b7defd397e3d035d106c2af5165824c0eff2c147
Date: Tue, 13 Dec 2022 14:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670942487
