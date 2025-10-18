Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39268B67A
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760773794; cv=none; b=UhW2OzH70fAcdxll1qoLgaAB/rRdwsg/GjbRhRSBd2Mu0do+vzsosQsnD0FwbWc2BkcZC9NBYIAJkGDV8SWd82+XZCnwrUhjOGpr5BbkCsYEfjr/XFmnbHJkR/nOClKB2HfJmoJVL1lEbzatSLRV5atllDwqDI3zgsNhdE+LymY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760773794; c=relaxed/simple;
	bh=Kuu9Fb9N0yCTFOMyXEGpY9KWSZlYsYEaQyf820gp7tw=;
	h=To:Subject:From:Message-Id:Date; b=RA8NNAV0Q4T6XyOuluzYbTdKUzWmAyiZrRs10WxBoOr1v+bVNnkulcwBcmNhr0cwXuCRx6NEcgzDeUzNJuhkVCKQFBSLoIYlz2l3nxe7bqlPMRhA6qt3tdKGfjNHKyLIDszrmY72aeQQSYSDnNUVvROfMnDrGcAtOUMV+/3hN9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEAOFuw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEAOFuw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C6EC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760773793;
	bh=Kuu9Fb9N0yCTFOMyXEGpY9KWSZlYsYEaQyf820gp7tw=;
	h=To:Subject:From:Date:From;
	b=AEAOFuw+DF050Jd0U/ImJP+1hfiICxoXt2trlJsVevmHXRQPU90Mp6Dz+XGkX7vDh
	 mnG3ht9LlfnDV3cl4a7VK8y+laO/5GmylwQ1Nff+7zaAgSqu+z2u83YN9k7tBSVd8K
	 65JFpYLu3ZaoZiq8qHYY8hTTt9w54kocG3FCBfp555UfpwAOGHRj+bZM+qXBVKZagE
	 V9V86/6hMigagl4UpU3Fpk9E5XlkcZ8a9lNj27Dqs6EDSPEuUSQCFDvqyViEOOlE05
	 jzU7LqXGN1bFTI5pdVFiHK4anCAuEFbEaCqEGanQ5NJ4bj9Lw1nGEP+oNZ4fgpPI9n
	 zVoAKSGOYuzsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FCCCCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176077379358.17513.16804879789826226669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b352d59701d476bdf157f38e93caced1c000379a2ce19064541041762bbcdc3
Date: Sat, 18 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760773793
