Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9605364
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73553C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665765653;
	bh=3rZnM2AfWID4UuQjh2+quXU2b0SK2oO1wwZ2wv8Ws7M=;
	h=To:Subject:From:Date:From;
	b=FOlgFoOaK0CIWjtSQ+nVYX/9pLIXAfZUqP6lzd6piGduGDxReeb1urbDMvVoctk8H
	 xItKD3eamGnSEii39Flg6CX6tFGNn+imBAhbHynYNqtwzx0zf3Kc4FKeIwRqjeidam
	 DGIgd74xm592SVLmbHe97/D3MzPZMXaoMLbXtoGVxx0sDmRWyg5fBdmCgKGrwBlruL
	 eqDUCel0fdnaP4Zpl/VLhfnm4NIExOymomv1wqDVWJqs9jiKzE/yTHUbf/vJYIwAQm
	 NMG+dV0h/rZHJQnfrCjjQ43TityLuuB9oaOlaJ8jgpNSurqpyZoPH9kgM/a9k6tIag
	 0DK8quiRg9V3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5294CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576565332.23928.14137730008882754447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08cb93ea360e8ecc6d28f88728611cc247c6e2229a2983b109a816ac2fab1945
Date: Fri, 14 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665765653
