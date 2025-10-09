Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC7C1D5147
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759994394; cv=none; b=YzyPrGByV+cfvl2oxauOSInal60KqaP1WK18RNdTJr9sOUOVbBvihV4dPi+39XfpteODgGSPFFSt3/ByYP01M0KjMR5TRyGX1UXrNc37RbLQCEWpTdLVgW2gX/74PhMAILSnnM20y7vqqO/qHZwuMMmXpQuRhOQnW05zMMtQwkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759994394; c=relaxed/simple;
	bh=IHHaizjKg3MI5xMCU4+jXzMh7O4yLuPT0q0169Pk8xc=;
	h=To:Subject:From:Message-Id:Date; b=Bv4jkZ1ZzlYYl0Gy9NksotfF+Xq8xIYZ+xVxGuS8AqLRqfgaJFQdh0STPFZL3ov3yQxeKqsSgxzdCVDNWMfd/JfS30KkmajsLE4aILzVzq7F3I12r1f5Ssdz3u4gXUFsqVfXI9eAltITVm+COD+kv9CHs8gm6ljz0RKEtpOknVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+JKr1FL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+JKr1FL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F48C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759994393;
	bh=IHHaizjKg3MI5xMCU4+jXzMh7O4yLuPT0q0169Pk8xc=;
	h=To:Subject:From:Date:From;
	b=p+JKr1FLy0WV1ptUScyDCtW3w7FR7ECcCJI3BkKrpzOiRwlZnmAH0kJpdZqDcPwzG
	 HmrKsZFOOulhD/yVkyId9pSYKRp5xMFjjXY4yKRdioDBODnDOBQWPzbGCNAKIv77Du
	 /iuuHKYi1roS+cDf1f03B1mNbzY730spMVbNwiSIWv3BnU2gt2CPrfAkIFayYw+59N
	 /LUn4T1vCHpO5n/UnG7U7qYi5CFeZMBBDFc0czcQy8v31/EZUj70NyUpAQrHM9KsFk
	 z/6JukJf0E4LosHTmGEwBVzpXc9o7GgQAhSYB2G5PBQ8wKfrlOB7iWe1dPrdXj+hjr
	 9hmmhSvrM2ueA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05D3CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175999439364.23914.10289019996756728650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a643d9d3a14ddc17e05307eb626b76a4ea10836f4844a8740d7a846a91ba80
Date: Thu, 09 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759994393
