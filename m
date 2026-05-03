Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EA63314AE
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777822054; cv=none; b=fO0vKRooXToUfpdj+xwUi1rktNpUDAdVLVuwgnxy2YX90pjpGc4HK0/q/Ps7XWLXbWjwchpg2m6EKwSglyJENGYoxhixDjXgkYQrt7oudWj8j40Gj8OXjRbMOcO/H0y+ln2dklY/mLSExda1rPUd1CuXV8HSiRPvJT9cnEjMIFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777822054; c=relaxed/simple;
	bh=kh4wPWqJtYhZtfkf5PN+eVEKyaGBVa65FbOZJLKRMFQ=;
	h=To:Subject:From:Message-Id:Date; b=V5W+ldsnD84qbU5tt++ufWBdx0C/TmOjeqkuwy4TRbAmz/P7DY4+lioZliZ5Oc1ChXAmlTSKffP0D5AHCtwtxZA3Z/2XjWXc10mNFcqeHzG+S1Ffx3u70UmKcMct1Us3k6IXSwrLroABwAiGwAEQOEEReKwuNUErrktLsdxQCyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INJuVLVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INJuVLVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0490C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777822053;
	bh=kh4wPWqJtYhZtfkf5PN+eVEKyaGBVa65FbOZJLKRMFQ=;
	h=To:Subject:From:Date:From;
	b=INJuVLVOXEjlSIz6QKu7rmVXULmX83ltTyMQwEZVAC4c42uK1o4pN7a0Z7SH9dUZX
	 FlyyUAT5nfiABLhe/EAl/IY7MY1pBDn3OHGl8+HpKmMrj4DWBaeO+DGaWRJdKUKEIb
	 NxpptmMxro8FnswLNCQk64z06udmfdSDMnagktbqprmiDpSh3ng/dY1RwcKVVQaezv
	 CyW4OkZhs6Me89OeARxf050AW1MBiZQ2HnoDqCJvV9N943T6J3guS0lEPNnfR9JF5y
	 6cbZmzwHzWfbE7rgOKcMePhCEfJw2ikkl2+ns8lYdRc9BHaGBBjxu/jX7oHS6YK2DL
	 D/kUCQl3tNPUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8C8CD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177782205368.19476.6628986664520351433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feda0128527dd4624ed32bb2b53993636f9c67bcc4caf34f67bf93f03ebc3339
Date: Sun, 03 May 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777822053
