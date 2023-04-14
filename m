Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417C7630
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 02:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF97C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 02:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681440066;
	bh=xxsoAkjTHdW5UYYQ9haXAd8+qBpOPwOlfk2QpoPQqOs=;
	h=To:Subject:From:Date:From;
	b=GF+cPzuvIhGI5STagalMP7ciSkYM20AugR1Qstc0IcC26nPGnmrpftDnq8dGcBfkd
	 ClSM1gudYRcJP4JgWqz+qiuYB0oz6f70nSRQQJ2nAJgsnZMOUS5Ca+kG3ELJ53W3t2
	 3tzUPRWpNzoGhOzpVbjUxDuWmHl7406G6JPgWfkCxCdBHQqHTwdnH3oIuaPBOnYOgX
	 oiKGWSEHF1Yl5m2HbzP7PCvNNlohS4WEGy59vSrkovnns0AHzwO+EtAKfQgHnF/8GP
	 eZ4uEuOwBCrnxI7tUH/vl9wJES8dR9/pkaRoVN9Jg1DDOAGkLcFmcSSuTiV4Kk0Qir
	 J6+D41clzXvYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC4C2C77B61
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 02:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168144006582.22931.7288151392586522680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d96686706914bc89250d70bada3b044988bf16834ef30e8ceab0f38256ec7e
Date: Fri, 14 Apr 2023 02:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681440065
