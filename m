Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7AD1FAC4B
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741076934; cv=none; b=NuH5rdPtdLbUXTEb+raU9eGGUrclS4Vd1EmRGbVCILW6nfQK8yNXqGkSl+bHw7Nfst103EFeeNeh9NQzNn6b33Jv+byEGLbH2QfmXQAjBuhRj1gYrUFkmod23+/tUksjYfuEvSG8qysHkfymw9R2QZA9iPPnCYzmJTJ8sDQdJ4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741076934; c=relaxed/simple;
	bh=3jQLFwZQuGbE6TBhSlD0ymNveksKxQKF56yIlOHWdm4=;
	h=To:Subject:From:Message-Id:Date; b=OkRq3fTamn7TO5f2Y1J7eCJ7Zdf3vY7Tr4bkJdNw8PLTX3BVfHzjhSw/9mJ42HymbBA+L2q3veEQY6m4NWTjanNn6deBycWmJMWKW+s5utNFOcYCWenx/oRArJmfyfvBQzBj7zr8a2IXOU//TvCQhCqqxdOHB0YOAXD6rMZZNRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6H6iU2l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6H6iU2l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAE9C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741076933;
	bh=3jQLFwZQuGbE6TBhSlD0ymNveksKxQKF56yIlOHWdm4=;
	h=To:Subject:From:Date:From;
	b=Q6H6iU2l7BhTmYCqK3SjKNj9M8Nup19ETxDKElPLoZ5qtfrn6jqtVlkq2HJAeK4sO
	 4nFDIOw5wCje4cAinANQ1H8rPPbA6SLJNSTNaSUVNnAHb7wIWNiaIbIoYuSqshbmIv
	 c5jkxB6gXywNN6nOZb/OXYDUtJb+i5fkO4/+/qbqx5iFXuL0nKOxLrd4PJfqyzl81m
	 Mykk8GuULGwqW5KmCYVU652CEzpkN5G1T7i1geRdktIokW1eTxRV3chVfhtOiUrsbV
	 8M6gY5INT1zUWWeQoP1p6dow9n1OVH+zOvq15yhkJCPDvczy8FfAwczE3wqA0DXEdd
	 TdUk5MmZDq8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA18C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107693363.18135.6048758238117781739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 844a480392456cf83c4437fc887f18f01a96b62011d7d4c3e07f98669d395023
Date: Tue, 04 Mar 2025 08:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741076933
