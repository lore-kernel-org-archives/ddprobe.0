Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7576F1847
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0371C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687921988;
	bh=Kh6jCvGXqv2d0fGw7sWRdHPLnZtQytFL45Mn5/1dVEg=;
	h=To:Subject:From:Date:From;
	b=PxNQfnGp1d50D1k/I5M5hH5YWJOvApnkxzocSW8BM7RBrzm8fxW1StAiQtN5dUAnC
	 7Gmo/7H8Sf5FJmJvl38RTu44/C7WxeWo3U/Nff8VTgdRZLDeZChxJS7P0J/2MD/FM7
	 pXAhEW8N8pLOamZJuSOdECogoQ/HZ7s0q9CWd1s9f6G6rE7frJol1bXWL15GAGzMhi
	 rNJAN93AL8Ku1F/W5Rr3dhwY+CM4QxpJOOQwS1XhW6AW+W7z266opEoZY7/J9nBpvQ
	 fkKeERYW54F1DKLonflT9xrE5KgHmU72ZyM7k1nqQn7YjRwMBWgLVX53OxK7PhDJPY
	 NJzFQNWNEGAQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A8FEB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168792198871.26785.1863952850268050367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46947a1f40abf716defa93ed99c1b7f0bb92f8a641217db68b5c9ac7981bc96
Date: Wed, 28 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687921988
