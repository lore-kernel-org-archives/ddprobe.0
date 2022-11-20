Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6B1F442A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73649C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668986454;
	bh=f6cQeboUTZwIg8utte6Ahgsng3V5wRSZQ3eaWehrKSc=;
	h=To:Subject:From:Date:From;
	b=elhuRoCZ0iaynQE0y4jQi2hcV96+8ueek++5BVQkHPnJ9fZhAqldpge3t1S0uXCQM
	 3FGiqr6mlPf72Z5giZmOOQxSTJTPmw6ramVwwj1jWl6p7PgtgOOftkRDwdgws/hGDT
	 Z8xsxMfX2d2sxXQazTshfdP/tdtcGJvDQ8YWYV7tlqy4k4R6wh1ADoNEUOErsHcWw2
	 bxiXfCxv3qw0ms7uvCs3jqMfxG+k3ViBVIE6gNBQJ765VHOvvg3iNONfa38EB1j1Z2
	 2XnvaWauGMiHAnuidb69ceFRVxjcDQJ1DEA+cVCfbR7d9JmXMVFR6uW3bKv3mUa/Pt
	 1yAi3FN56kIow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C10C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166898645432.19141.13900029440302617711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff40455839351dab94bbe762a9fa1012202594b2910a99ea615e5780fa13b09
Date: Sun, 20 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668986454
