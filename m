Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAA61F1505
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744289394; cv=none; b=gVuUUTC/Gy2d7r46SbL4VkEZ1gBiXGJsB/uWn3U0YvEIsRX5YwWGIwwDzi59D5ZFnWISoopJVmDokebk7e3dq5WoY2DCviy2uXDhAMrtBSmczZB+iFWs2v3HcqwEdhX4NOo2ReyGnFU1Li71kG2X+/F1urA8bg6If6U0LBsbjQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744289394; c=relaxed/simple;
	bh=1spHSpPYAp4T3BEx21dbvDz46sY9yvO5+uIXdDY4EH4=;
	h=To:Subject:From:Message-Id:Date; b=Kq5CaNnojP7G+4rnnwyX0mxZsrx4AEriI/NYhbZU9bCKZegWNcACDCx7p2Z55LU/F1YWMTFf2SEgHKGLLBVF/Z/N62cPxz9GpkbkdYE9KBODqZ4bjkpkyYpz+oKwIWmAD/aABBHhUYIAhkUlFvMw0/b61hlogRbu+ZfRf3UrUCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqqGa1kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqqGa1kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA95C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744289393;
	bh=1spHSpPYAp4T3BEx21dbvDz46sY9yvO5+uIXdDY4EH4=;
	h=To:Subject:From:Date:From;
	b=gqqGa1kcZPwWUHkEGI0B27DmKvNJKw0k+WctsaVNwRkuy0fTjHdkNzb7I8j+fQn8x
	 pzeQOUI3VSIr+d1mM1Zsbsm+uobYmXA9iE/ZEuGSqdtrFP5aJJcllozG/F5T5ZW2hc
	 AHylIdVBb7+9WlfQ4c8bi93Fsdz3QsfXf5CmnIjNCVMlR55MxHiV2O5HtTg37BaOUn
	 +gR/6+H8jw5DKQkyacntyJM7UGH+9Az4TlqLS/HuMyc/p/Nrwgm2H288+tNj2EWNQ/
	 yKX+dho3Vx1PfS/rmHYDyTajJuhOYc89VUPYkL0Rs5K+2t93MZzEpS+BgDsut+XSZT
	 CWTAgM42ZJxgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96620C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428939360.9549.2722879625768215076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 874054698b1d67bfc0c16addddff9828996109dd19058561f6b1773214b1be0c
Date: Thu, 10 Apr 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744289393
