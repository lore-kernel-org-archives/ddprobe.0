Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE7B180
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01DC6C433A1
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678753626;
	bh=oj1zDHw5eUzAMe3KkCRIs2pLsx70vApDMt9kkNWewZY=;
	h=To:Subject:From:Date:From;
	b=MCveoNolGmmIZEPoSvJNetQwYoFB4w72HkrxwIMiZigaK4am7ghGihxUs23XXTOZM
	 LbcZ0g61WZjtp+KjzxUop/2t6EnM90nWB1Y0Mj2EOxtlDWyaX3xRPNX1NVhszhAkDv
	 McF4S+ETAVfNhzCW7djPtUz5mYQLNM/y0aQ+L5WoRx1XiodnTG6XxVrP+SEtL3fW8/
	 IHiHSJFPQ/k9TrD9zYG23sH8WtgY9thgBhsGaPXpp1TXQVe9nG1bATW3qvNPLhJgv/
	 xrocGp8h167Ua520J1ETBbfwfestmPNrioF67cKVcLe04FsMAFSS+XeUxDsOMok4xC
	 I9LbEpAk/yRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FBCC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 00:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167875362574.3594.7032227409926658220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543c6d340f0ddd3e53ea1fa70218bc8d375545c4cf8b64f3e5b077eecc5a0ad7
Date: Tue, 14 Mar 2023 00:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678753625
