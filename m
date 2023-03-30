Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9431854
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16376C433EF
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680149346;
	bh=GlnzSOGLC1bRjL5xtUTiZLEaKmMWev5sAbWubg7+IOA=;
	h=To:Subject:From:Date:From;
	b=UpFfqs/Q68jEEe2oUeh9v4HiVmD4X7vtiiedpEaF/OTlNH7+xAizNpULL2GaK99V3
	 mslZnc6sDKPrQjA+YK6MpE6TO8+rtdo73jvUz86D8CiC/g0Y64VLWpI5Dtp0YTxlVo
	 lZ7iK/1x1IyFO0emYv3b9llLoZf27OByga4PP5ZwZkwvG6h1nmwIGXEIiBT0Ntb11j
	 WwtiKBV43dzTUpLvjgyoKFofI6339D9IPPYjgtxXSIs7SO9qr0rRnpb0BY7z5cFCah
	 /QXgNE5FkkUNjO/I6+E537o5Ua4waxY0s0BLPES8G+kbiPhGhhZ9W3GN146A7R8bUW
	 gomcq89EP263Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCEE7C74A5B
	for <ddprobe@lists.linux.dev>; Thu, 30 Mar 2023 04:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168014934588.624.482547013761432322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eed56368e193ec1178031d2f28e47489927fd15fc9739aae246df8e302cd680
Date: Thu, 30 Mar 2023 04:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680149345
