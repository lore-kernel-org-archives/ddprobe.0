Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537CB372
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 01:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04291C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 01:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679792526;
	bh=lXE37RLCiqRav1xJL9qvXlWtHneQRuGR1LtoRB1M/UU=;
	h=To:Subject:From:Date:From;
	b=INtJu+Y+Ypw/eUgrVp2dyyzfeOmyWkCwwN+TTfDsbASEJpdYcDI57g0jYkcRvGKta
	 B4Iv/h1iN5kpArIgeYkqIIJUgWcRcLkmJ9dcV2sUJM8uEhJipWFYWVVuTE7NEbwt9d
	 BLz4bBc9lTlmSxsVfh0lskmkmK0IN5vF4HwUG+80sctDfC1FLVH6tG3JQTB29z+fla
	 TJVjSxJzH86KrZiGn+uOg8vjzZcYL0tpVfu5QlRAoW80dhtUJPgH4qjrICDqxz2PI7
	 Ja0g0OeRkX+t7IKXO8F+L1eYTA4iNUNcYyNGA7gmcjaD4sUFiH/nCSwcv/f9yxrcuy
	 I2jLP11CjZP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9B68C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 01:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167979252586.30758.17641163555975920664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd6c9466d7f9689e341c0f1098e497a8ecfe9ed5537b367af0390e8275fcb52
Date: Sun, 26 Mar 2023 01:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679792525
