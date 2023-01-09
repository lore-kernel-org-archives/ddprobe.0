Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF59B28ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9574BC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673257887;
	bh=24QYTkC8cw8nHdT8I0+2Cbun//ls1o0fyHLpSY2bjmA=;
	h=To:Subject:From:Date:From;
	b=VA/88RvyAHgzSz+zlNUGtv0Bx2+Ae3c9NAiDJW9T4zDm+Up6O6BsXKuswrmrJmWXj
	 s/BXN4z3C1OBAXTYEDxJ42MrF010Z+q8Pjkcdf+Tw5aStsU0C85a0mslqC/yVy+ww+
	 M9GDvk+N/HnCM7jnbrMXvCyV/d912Fsb88Z19xDxgLRbzKig5IUd9jvZPRufhx7Y/g
	 OBZV66sbWIoVfwHOLT5gW7Gsv5CRmAnur0iQN9VqGFEFGgEGm14euCuC6v2wvPc7VZ
	 A2amUyLTkte9rGcLnnttgMWAVBUhsEKlAL+82sF7NKI5E+BpmQO09tDxIuggP+WdVK
	 pnsnk3sApIR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 735C1C5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 09:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167325788746.13516.15879503337967489173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389f615ec43afcccc722c0d94cbfbfa329bfe859ba7ec816e85d9e038f18192d
Date: Mon, 09 Jan 2023 09:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673257887
