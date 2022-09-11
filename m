Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB9457F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691A6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662896453;
	bh=qnCxCayVGNtpLHWcF4NpqpzPLGTiAq+WHJ54ywdl+PM=;
	h=To:Subject:From:Date:From;
	b=CZuAsYsAQespNDeE8KRA4OHA1rqEK4GKrNo5OON18wWau8cwLQ2GZLCCLO/nR6Ov/
	 AqG0XKl6Ib63VfYfKnOzkUw//jDriNGNqZ5Fh+biK1ME7yCu/3EEhANv1/n0hJI2uC
	 IWsS6bRBceV/j7u4gszwXQNC7QTuMHXodLgIAPAie53SAzl3PMPy++yjnot5vcnb8Q
	 E2dJLT9mk2QLYf/HRF1jnDKT4uhyTkxh8gIH0Pb/bS/xZ3ISF3rcL0zd+Ac5/lrju4
	 X9hZjtKTUfR7Bcszv5cBjp9NR825u5ydUSjzDCNXA177Efyxvkp8tVKAY9/fbsA6W5
	 GpVNMgomDGwMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54082C6FA83
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166289645333.6775.6751089775370849289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fae5508113dd158c6219b8cc3d63f2b8292355a2f7d7c258fa1266744a517379
Date: Sun, 11 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662896453
