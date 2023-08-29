Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E457FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 02:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FB6C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 02:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693274648;
	bh=7LUoW9I7OIQUsLsQJbk9NqQkcMQaAul58E7xg1Ke/OQ=;
	h=To:Subject:From:Date:From;
	b=T519GeX84U/WSWTq4q/ilaxImZvPaBIQ4dMhEtAjANBjmAixrInE/5d4QumVR8JjT
	 uGgM2lz2QFOb3b6lbfi7+fqlrX8kUTubydU1VMrgCwXp3vQLbalzz5QUNSx4UOT6Mw
	 1tgHWtBqtWxah3AhX4wz5tyjK56YHEmi3hLb8VK6Q4C/PyMCqx1B1fR33EFG61wjNl
	 tiNkChidIclmN4iOLxz5l1Tv0bA+ZgVFUqXGOhGesTAuULnyYToyFv2eY88BxEam3K
	 wDsGq7AW9BTBYP2lqzlgiVF+OubSIoyndAqxk166DW73nJuHOl8nvoWS+kz8tknDDN
	 80KNx6qcmoioQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2729C83F15
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 02:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169327464870.4576.15764933366256187064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152f9885a3a351fa83cecc531f7b6b0088366d513fe45914d7151a6c766ad000
Date: Tue, 29 Aug 2023 02:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693274648
