Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4603D2F25
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 11:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E379AC433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 11:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678966205;
	bh=3GHliqw644pX6mxrnzp7S75NS925Jzy02J6uskFrHD0=;
	h=To:Subject:From:Date:From;
	b=UDjTsEd3E8AUbOhWNqZvN70N/dCm00Jci9fRNchoYFOYeoUzm+uIhEDRpFuICm8F5
	 uR63ExZpxMIahRyClObuFJMxHByY6j2EmM+581NcFs4w2is47b5bt4jCN74tmPJ4UK
	 P2g5TdcHwDk9GVzaVIj6DkyCtLItBf5f7wNrGgxE9zCh99mq6tEMGvB2Ah3WjXzUK8
	 12O3AkNvyhc+T9qkWpAlGQea5T34URxZk/lp8+Hv48Psp24HR80x1VMZc5ZbiGkU9z
	 htZhB0cA9ju+sa37pnK5frMiv11TWa/g+6nInWVUwPJdfBQF48IGcmz4Xyh2zST7bK
	 3+YEXgp+IsIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F02C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 11:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167896620580.11970.7112176948611289993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba847d755e4e1d5001d38e455fe76482c4292dec0b332163d15e955be48665a2
Date: Thu, 16 Mar 2023 11:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678966205
