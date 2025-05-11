Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1022AEE1
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746992994; cv=none; b=nfnt4YVTv2rK+lL6yqjEpvc0Chk8uLa5ppIQaxkyt1DbhixWEkaiwbMhTdu186e++DKGXzYTnKgNXdmF8XAi2Fqk0UMGlCWSBD5ECjNGiBC7h+itJZhQAOpvLiK+9yhyjLNUfyUWqJz2rZqENw47kR2+GXbxeCyqsaeCDKHuA40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746992994; c=relaxed/simple;
	bh=FB6KRDudNQGBTSGcGex5q0z1TDZoCBVIw8ZK13a/wmw=;
	h=To:Subject:From:Message-Id:Date; b=p5GUBDnhdSseO+GWDt7EFWkKTrTnxN/cXVMFD55cNXcEd8JXC3T+x0MpVFQEM1js9fEBTiLCygsX0JRZ3kTKc1oUoyZ/+HXtbKY8Sf06NkCPqE0VXQyQ95w2PMdmZRx/jFKN62pY1IcRa/3+CL4SnUV9dyi6VM9DWqdxaWN97w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUdUDCsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUdUDCsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87CAC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746992993;
	bh=FB6KRDudNQGBTSGcGex5q0z1TDZoCBVIw8ZK13a/wmw=;
	h=To:Subject:From:Date:From;
	b=DUdUDCsLe5NpTzyOmuO9TtDshxIc988wlANQWSwJw4rOi+w1NTh75tl1PXezSaTVt
	 N2z6UfxKp9DKoaUy8uWaGBTMKuOGWa1uy548Y1JYky2USBnALatkOS6nJBs++yJQai
	 qhoWsms+y0NyGZLfqIlRwlR7LrIST0vHOVL+WdoKIGgO4pgQRf42Bf5aub5tfaURII
	 Y+XNNRiLzCezePW1aoZOruW8AVJoWWek2kBAnOdIGZLwxnvE9kLNTfRxVAANwzgno6
	 rt9eiNxbehFd70BOXsCU8tfDm4pDSQmy3oqj8B4bV9Yn4qinxk+9buPjWnLk2A/J45
	 cdQoYK3E2NuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC0C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699299357.333.16437047757717924099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76956828855f072036f64cf8aa99b9902c762ee0428bd358b299b83180a7ca7
Date: Sun, 11 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746992993
