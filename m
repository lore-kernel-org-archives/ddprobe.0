Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EFD6118
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 15:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D825C433D7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 15:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668613854;
	bh=WoqHNRLkyyjydqXRW8DONp1naYlQ+9F+9aNyJTiD36w=;
	h=To:Subject:From:Date:From;
	b=W9HUonffT3td3eBsTpc2D/4ooQ4HZAHYIJkbRrRBWdL6YCPtA4u4Fq3Me2FUfdPqA
	 fqjjCx+m964kiZOoeogXoVMummEwnG4tt3saaDb/LPeWmsKVN4A3vxp2ooi+9kNepT
	 IPwObkcF6dUhg/38FONpU9+IB/zA5OQiYCpq0QSi7cVnc0ABV4SFYlFS9akb78iruc
	 bqyTUFbbcEyt6e7XNh8TDjmbtfqh/zf7qmylR66w4Micoe+Hg/dlW17QeuSiqpM5y6
	 6K4GrLdTfifuR0DRhadU+6OYpqgt3aNzHGUMtbPlaPprK8LzqW7XQf3+eZIf+g6RCg
	 A9seHCeivqIQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C7BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 15:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166861385434.28150.5691707790809914112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56ad9b5f058d08671fb8b80cbbf47a0533747dc384888e8095d05be0ab131df
Date: Wed, 16 Nov 2022 15:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668613854
