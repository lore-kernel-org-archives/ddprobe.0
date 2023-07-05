Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F7C46AB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 16:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB7BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688576228;
	bh=yTV/ImRS154RVDWIsObc6DUu0Fd97rP9KFbqHA5JP/Q=;
	h=To:Subject:From:Date:From;
	b=q3+8193VnxV9WFKfGtevhghax2CnjV9WXj1z2/c+kHHm/M8d+UtSAR4x+Si9G8Miy
	 Cfo7CIXYJbHeBTRP59FWyQ4tN9WuKZqgvkxaDjQwZM3B+uvvdtzou7HN3jpwZLQelq
	 YuU0NZG+ushuRiPtj9/WghHtJhi+YiLyxBsZKThxqcPN9lsT9lgdfGHM7hdZQ1T62f
	 lLuOYC93Yx89mglqQ7BdGIdr9tjpO9R+mKnJXix9EoezYJHWT3eaId5y48BKXI8OD7
	 zfvpMtRpY31z8XU6O3LFl8DMPxttTgPocA6DfEdBlYDy4lm2yH094m3tEaQcaHRZk6
	 R0/sINCsvfH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64FEEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168857622873.17201.16480831347621543034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b59f4fe3d47397157557819bf9d0ac9f3eb8b22278fc8b487414be550354b2
Date: Wed, 05 Jul 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688576228
