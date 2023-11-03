Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258F479F7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sI+cVF/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81B7FC433C7
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699005496;
	bh=u4BiR4raew7BHqYxCMcX3tlb1UCYrvoUfyRbrQdoYCc=;
	h=To:Subject:From:Date:From;
	b=sI+cVF/6unhge0nlTJVK4SlaykZuKsLHAn0FK7Cvhzw/c/06aUyBcAt0Zf6zOROS3
	 509GxczvI/eIhiP4bbmrmqF8WmJpGfxuvGpGLZb7VzGSQqKMC+QgDKpwqiMNFYxkyw
	 YJEe3tud/d/DRByjPG1qTZh+CmbatOjIouUnF8p/9URMXfAJnxv+g+W6IJVcV++pKe
	 Lu6sFlE94z1N3/Z6/jthY8WDhIwKSDWSm6yNh6bN9822HYsOU4ja8p7KRk46ufSuNz
	 83GIHEZ09Yt4A5zF2mpjqJlPBNAGgcqaVp42voS89YNRLL+o/qqK5aU8YDTrUu8qiX
	 imXg5h6TTphCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C22C4167D
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169900549639.10885.15555183592831014703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49d3ba3c4d74fd35db625a4cac6a3c454bdadff54a9006c6b8c9ec60004ed01
Date: Fri, 03 Nov 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699005496
