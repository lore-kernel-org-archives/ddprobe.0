Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B57DA2560
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 661E9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663834853;
	bh=2ounDLC6x03BbwYXrtTugVosXdvWjr0s3b96DvQaynQ=;
	h=To:Subject:From:Date:From;
	b=DzKgues1zMlF6cErYpnXoVldr6EidSCEy6APQG1D+69MGmLNJFoFs3jY6wzgm5T7Y
	 yi4ZkS8TR2nOFd20XVUWxDYS9hbCU1erzRbSnEuv1JFCLaigucGXaz5hT6s/fgUtwY
	 W+x9IOO+0ad1QWpYGehLXcOa8hPQfzCgNKR8RO4Cbg44KwKJeuFZkFAVflkiiSMxtg
	 K9ENK90fSd3ITlIk4FS6+VN+cmPDpajJWzlRTHdTej0p8wB65Zx5wbxhgWYxuUVQau
	 ATiTAGie87t5zIYDbTGcViwqEDYvrSF5G6YL/BLHNTrgBoFsffM/8hSBaoz5Xkyh2l
	 y++i1k86DpAiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F54BC6FA8B
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166383485331.31121.2913543119172891380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e18b050b036ad53e1e40a23fd018202942bfc1169b3030a2efcbdb04cbaca4
Date: Thu, 22 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663834853
