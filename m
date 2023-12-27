Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B63645033
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+rM600u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B67C433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703688496;
	bh=6OfCuAUYD6eTGD511Q5LrcsfAzdor4VdnIUsW5Rp8WI=;
	h=To:Subject:From:Date:From;
	b=E+rM600uGLouE+I3N+aPoJlFODCFqBFJC+mlLQPCCCxBFjEQ76aN5qLpEvoWUvF+2
	 X1z0WfyxNcpbOVCD8APLmnhea++jJ6N25xIPmkkUaO5HD3Nq/fuXgNESmHrMl4ozSt
	 kqS+h+9MHpJg0PVeXYPkQmMHGgPGcTK/ktur89IUDuNNyIw6YHBVqnq0VDlPk2Dr+4
	 ZG/TJk7HHto8sJb/PVhevLT8ujvwuvZ49TtVid0gZZGr+XxWDBHTR+pCiYTqz+ROI/
	 eT7MJsdLzP6AqyItyBEhIW0ao01lVNxVH/hzmkxJja32jRo8FHd+BNy6HawHRGpFTf
	 omRIK09Ywq4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6627BC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170368849640.17605.10846721387575794111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2775dda68ad766c0bf71fa8217141cac546fa1543309f2ff91d53cb3e17f152b
Date: Wed, 27 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703688496
