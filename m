Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322CF3B52F7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770299634; cv=none; b=V1yBp9+TPBHuq5Q8637wGbmtfItoxdor5x9a3ZRFYI5hoMx9R9IlvqPNtn9ndO0l2vNBuX/JYpV/O+iQ5xtQpKHhdesxCPfdvDMlf3G2v2CHPjOz67uUlYBCDnDNiTLGTZfO48zmuTlzR06thRod+XcyFxs7wNs9c6R6wm4BC2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770299634; c=relaxed/simple;
	bh=XSiuqgLnlZhgO6iu6hI2n9HARFzSlUk9gHfmObca86k=;
	h=To:Subject:From:Message-Id:Date; b=IvEcHGc5SENaUISoDx5h1RQgXVdSBFm4ufezYYfYwBmwutckF/9UUH1rEyfEUXvzTo2ZQIo+SrGGy8OE4kAndUK95FeYsjXT7XTbhVFhkFeGt1n4QeMufQS49nIcLJVfm2XeprVmHPeRHUu51xkUKqTIOr6vLwqJ5bfMcnhMW3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SP5C+Hsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SP5C+Hsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB01C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770299633;
	bh=XSiuqgLnlZhgO6iu6hI2n9HARFzSlUk9gHfmObca86k=;
	h=To:Subject:From:Date:From;
	b=SP5C+HslnO/gj2KJX+ZHcIToYC9dBZOK0PbvUKUbHmEjspTxgBkAVq45I5FpirAid
	 YTz9bFEHiInLRow9IUcCFuADragQA0UT25RB9FvpgtKIi2q0fOhWuHUnw6YjEehiz0
	 SuA5eSnf5ZRShpvZRLVVE4aWiZ8t3BwrcuJMVkksSJtYzPfbamxmMd4QWXVinOXsml
	 9TmMw1TEfmPbNrSGD/jyujkOwDKXY+Ei7b/QkV7i691Lb2ipiFL/5Q5uIOu+awXdPl
	 80fJKm+0uWdyUih35eqpz+px0paByQHG+dUjbm8zCWiO/4eCxCzJ7z/TTj2kZJT7zu
	 jXJ78jfArirBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1E8EC1EB2
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029963369.30163.12453452533744304959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f5d23718f4386f707131ad9b6562688fc177480bd1ae985446284f0eabf78e
Date: Thu, 05 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770299633
