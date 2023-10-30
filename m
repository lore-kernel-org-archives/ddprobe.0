Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2626F1366
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YCVj6LNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A496C433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698638296;
	bh=0JgH7UpnXUfgOCEZQDfYvf1GErmvN+eEQfVqF0P/D1E=;
	h=To:Subject:From:Date:From;
	b=YCVj6LNb4LsCEDWjObAPqAZQMT/Isub0WCF1k7onmT277VpW2X5YLTZ+HgLkjiaz0
	 /50LYQOoGfx5c3IcUrOvCUNT4cUBJM+4oamrL34SmU7baLh/KUSf5ZlGA2HrOXuVoN
	 GvbfOsXefmz+bfwccRHGC5ETVqoNOBc2SRC76BbzfMVrFImgpbqjdeN2iTMXDECPAq
	 jkTyDqCOis9dx9JuzxE9DhwdgNs+mlUByUPVWrqIofUwT27Ah84Aby/pOHSvjTrIer
	 1hk1HGRWsFh2wxE+kA+xfz3u+3UJ5X2TfaUVnmVnyro/Yvg5s1jfJf4H2h/Xk3aPoD
	 SqicGOkqi9mcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB3CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169863829643.8048.9799542499330210016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7ded8cea06610c74751c5daf1b06bbab4fedd7825895f00d69b3e9acd9f60a
Date: Mon, 30 Oct 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698638296
