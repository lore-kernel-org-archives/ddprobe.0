Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F0EDF71
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXcV4X+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80C91C433C9
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699435696;
	bh=B0oEyx3LBvlJPuNRovwnv9E4xI+YHwMgBZ10jPj7/xg=;
	h=To:Subject:From:Date:From;
	b=oXcV4X+5AMGWqAwlXU1wekrbJskx55befSMtkfNicIsGobqhiqoeKvCt+VXGkVPU5
	 N9Rpzr8sq7//VO7pRD7/mRVOwwUst1kwJ0ucQAvlh/7JfMn7mQ3FAmCQrpzP54Z4Da
	 NhhdHBqhg12Erb0u0u96PBtL34wwO7GTCPUcJbGVlVQUtAPUppS1rID9GEe2Skam+5
	 zV3/HHlnPHP2hRwwGDAolfHd7DDFeqEG9paWKx2xGhQbV00dsOT6AGlxb6fMolBccS
	 j4GkDc9DVyD3M3H97v+u4M+Y9ZLIrgDhEuLUQV63BDrp6MUZwMLJ/aFHd6OWvs/yLk
	 4kp3ax8zHvkEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6777EC4167B
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169943569641.20923.10739665126938347875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b9d9af02d3400bbf3d4d9cecf98745e40e5d27f6f75ec3dcdad6a957e052fc
Date: Wed, 08 Nov 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699435696
