Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0C9158524
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738652154; cv=none; b=RVCrV0DM+veUIdczREMko2rXDkoEScm8Z0ZBO2hs+n7ef1gWv0Re2fpdAhonlmBFLWmVWqXCN8SOEC4mQ9WxPAq6Dc0pL6i/nSbOqY/GKWy3Yepyu2doNmdO5zWnaqqh0tMWoE+qEzZVq2Xz8HUj6zjXWcYvx0m2f7s3g3x5lck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738652154; c=relaxed/simple;
	bh=NKF3q7JP216299TM/KL36Si+lE0QuoXxZ6KwLK/Tgro=;
	h=To:Subject:From:Message-Id:Date; b=Xfx+wnndgYBRWaUFHLJ2j+AAkkkWt7Xxn1EZUIOTuNV7G2dK2F4SDqArXre2HhVvbA3SsIZVl4+25pbt3n3UrtkespTisLp6qBhvv4IWqa55lBhhX2yrxT1EC1Oo6+PUms7IFFdvnQcc7hQx0foFNCFRiSYYjU6/SpWct9Ry9bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFI3zg8y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFI3zg8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BBDC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738652153;
	bh=NKF3q7JP216299TM/KL36Si+lE0QuoXxZ6KwLK/Tgro=;
	h=To:Subject:From:Date:From;
	b=vFI3zg8yLQ7AD03WKXLzo+mZQ91UWws1yB2T0b6Uty1OvtD3z6YsGO2zrhvUCYxyj
	 cLosAPA44mYliahGUMqw17msg+Cjd25aHw/AqNVVctZW3o4b0yfVTD2r8WMMSURUy5
	 YdcbuxNFrWXDFPjSzqpT0w+/A7N0eXOJ8/101MPX9Ywc+D+9DcN+WtXhmTSrNrRPUH
	 qZTQZf19deKZM/dH6Dg4i/vHWRinSvWplgw0Tw4onASCduoY1aJucC9eNEMiW+VHdI
	 smiWPJ3n/vsIZLSmoJkNltHwkhfMhAlHaKB68QBcEQDbkD+yGM/QU3BKWUa89aZEfF
	 nzK8VsZ7w2yEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95538C02197
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865215360.23605.4588217413464843238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6970a841ed413989b894b880826a45e4fc946de27385da6c56cf8efc414124eb
Date: Tue, 04 Feb 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738652153
