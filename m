Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E27820315
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714085543; cv=none; b=Mc/vkU8ZJ3n4OZyPo+bvwlb42K6x2HkZ3+MCTG+pyOoC9EzCo+tjitr29TyDvJ9giJgxRii6aRPIP6PlhBGL6ufPDf5KmVbXkkCNHzVgjUZF+sZoSJNSSfbBiZzm4LHMlYe2RS0+6OxyzA1akwFAsLBV77Aye1dIU4ZSrED6QQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714085543; c=relaxed/simple;
	bh=aRe0qLwo4jXAA/DTyKD0f6EpKWbpy+uRtOcru0lAA/8=;
	h=To:Subject:From:Message-Id:Date; b=osKNztGQDWO123QNoFmyYYUgaebEFQFoJXx8ya8HzgqVOfFrTDBdxsXyZ7cIfvek9s+JCdLy0AKMGevkQDHCT7G5Gkcy17xky/TxEui5JXr3YzVQg0X0ac/fS1bTEmwPPS8Hnj9AR2qEjXJTRhN8TMYt8G0WGao/PJXCwmAX/sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSujkaNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSujkaNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55B4C113CE
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714085542;
	bh=aRe0qLwo4jXAA/DTyKD0f6EpKWbpy+uRtOcru0lAA/8=;
	h=To:Subject:From:Date:From;
	b=OSujkaNV6S2wNpplqkKZ6JVtsbqesnwZli7fp74cKbPc/Fh4chdE/qj5ePJ9K+azh
	 gXOAPN5yKTCzcHa2QzfvmqPt8eQTBXfPPIaB7s88d+OGEWG4su1TjGpYGOoNQDZhZy
	 8JnTr2thztNUI9YTjhf1UT2u0BT9I8v6LAwwOu5iRTd2nNzdFjJXzfL6G7+fXP9x/I
	 8Z/RAuxkeVz33Zq8yQGYznxV41b7BzRxuWXLylrjwzIDbdBNeW9+SAfbmb02Y0W1TZ
	 c+YAubBZBmqykJqDI53mpevwvkgmH2XFZ0fvQR6OvmX6M53sFNFLyV4hFKDW44rxQd
	 UGSELQrFsyq/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CC5C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408554278.26731.4323670595091432507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47f335f775f943409faf99c82600b0b595f152cd1d578593f0811e1c74117871
Date: Thu, 25 Apr 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714085542
