Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B365669
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 17:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DC0C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 17:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678900205;
	bh=18qYPu+KL9r5mf7ge1zNyb/FND+0QQi3VsURhztm7ps=;
	h=To:Subject:From:Date:From;
	b=gF6yaoeOuA4ajG4bsH2G0juFb3IvwDvrIVZYrhwedVa2+rgdZ8s9wfF8Y/P1ubEgz
	 4N/e4fEhiA2WYNGeGpjftb/Cbnz2rkyw+R3RHRGv7AHuU8KbLRt7LLUMvRnQ9Dz5eN
	 5VFSiasOy/aLJGxJjEIKuGQe6/Z0iPihFfwNNUMABrwfft9e76IRRk1LJZ9j7xo8Sc
	 mxg79BqG1ogACaFHLqo7c2Rui7vgswNkTSt0Cc2YOuCf0BAHWXrU0f1C4z2fwUmeJy
	 B5faOaji/Yhlhh4HlAdM0gUhDFRQB58EjSxGhiKriM90DczgZgiISYPz/wmycdpzc2
	 XcTYsuR4eMiIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B68C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 17:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167890020580.26845.3374404753179606466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c1e6e8c4fcd56ec0d83f4dfe3eb79ab8302258ed589a8e85dc19d4f718dfaa
Date: Wed, 15 Mar 2023 17:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678900205
