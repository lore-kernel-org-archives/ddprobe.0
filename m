Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619EB2F43
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 060E9C433EF
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680437706;
	bh=OpeQrP9SlnTM7W9zXlQu6WgdkiiMlS/cxI7T+8k/6TQ=;
	h=To:Subject:From:Date:From;
	b=XrttPD/ub/X+9TLsJphQG8jG+z7+FpqgRfQx5H/vZPGrKyNgPmM9rw6YMqrZrI8Qv
	 AV/FBjidCI795V0yBKVgsTwCVwbxWnuaHGcMN4ce4G/ijKQP1p6vw5oU1wvnJ7JeRs
	 u7hJvbfCKYxPfG6xjj/2HhohmRmUfs4ZhEQxJsfMFiCIIiwPnldh/qsQFbTfTrXoY5
	 dkBqi0KwY9rmWucDS4e2tj7mdJSEX+mwRDcQILpaUQwwSUkoemZRTxTcWPlYGI5uIH
	 p6qWlzHf/hBkEvUTbH5yoHEuTYaGdIsFZ5JkR9PGKOhwlOsiR9ifqULX+8J8qqqAWo
	 sXgYZwazRUqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D57C4C7619A
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043770584.25069.16872092098167583348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c102b73e0b650a484ef2f05827907169f33d3a3490c486b4a7d693f90ae2d761
Date: Sun, 02 Apr 2023 12:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680437705
