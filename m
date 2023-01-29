Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0BC23A3
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 15:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E637AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 15:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675005185;
	bh=LU3jufa7uk+jn4CLJFdvXhDl64Pm6fnNT/CUfhjpC1M=;
	h=To:Subject:From:Date:From;
	b=IVDSzRzrSH0fg5V/E+Lyds3SEW/SbpNTWCqlVNpKUp1U5QarYJHlB589bJuSQbUzr
	 x3CUca/Mgja8rguRU69bP7UwBvdTNSn6tkBjMDKTkmibeDbKTBw3Uh5tOvDgIyZc1Q
	 3ZoXkrUIIHM8avi5WwJ66y1YUGuJZ1RMQBwclfz9Pd/8ZFveIEK4K6ZWwa+TOwi3Zx
	 Ecl6ftFx7wTuAtXegs07ibozGAstH2FOrQa+kO10TfA+yR3FavCFnXh9ybF9KnhrTS
	 qw0K2yRzS0PPQPDhYCv+w01dXD0pmWVfvVahK3W6bOw1q2gi05XJRGwtK4fHLKOhWo
	 RnB2BF4we5aRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA94BC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 15:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167500518581.29836.13133400274490302204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372a9710c265b1798448238a712ef135483c1dea899648ac3257740257bf05ab
Date: Sun, 29 Jan 2023 15:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675005185
