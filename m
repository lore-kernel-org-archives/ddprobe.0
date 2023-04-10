Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B22197
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 02:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5FDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 02:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681093865;
	bh=LGdxcQyr7M9OCgOzonbyGUaA4bj3B1TwnvkVdD+ngy0=;
	h=To:Subject:From:Date:From;
	b=EuKzZLoCbZV2FnudFMTXnglLk4X0H1gLcIJixQwWz/R3IhSMXQozp87Tp4/qXsmBO
	 XbK90QvoFhXf3OQQwY7xDiLx9oTjH3Cc/5XmiWHEWAK4LChc37Fib9oqGcHu4E+B3Z
	 umnsi1iUkFeXTqq5kyKLWcKcNY5c92/S32cQfPoWANyWpnFRAhbPhd/yDgNKa5ONcq
	 fYix/LK6amxaI9JgQ098YxaSZ75uOJ3D+LHl+i2y8KbxmRL6FpYLq7b388u+1mUvhK
	 ZpGfisZPO6vBzRAj/cQBU4zre4E0+1is1acf0juSm1XPIYQ9E2xUroIEUgTnjF0Ye/
	 iRDRzDhoOQN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE567C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 02:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168109386577.31592.922346368372822870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5a44aa3945f19d90a9b5369fde034191cc321456381763fe74485351e714ee
Date: Mon, 10 Apr 2023 02:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681093865
