Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D695384
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8nKGkGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7B2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702201696;
	bh=nkaITjYZQm+fsbBw7U3+kAGrcF6FFDkqfV2psKsT3no=;
	h=To:Subject:From:Date:From;
	b=j8nKGkGh4iPoaT3LPkkSpoDYKwta8bxO/qx+51LpXCvBU/BUjyE9hdeoOmtdoL6Rm
	 g02SPc5v5VmUz42kW9tgYCCGIWNmj2alQ3VTnpOSX4ZYNjL665C+lTzSlJ/k/EkEqh
	 drExmIU+Cy7EpR+oo1EoBQMnIzN3VTpUil13qQaA2Y7Hvxw48flI6/J+2s4S93rvTy
	 ETFuqO6Iu+c8dMX9CubROYmM/l8HwCX6SGyGu+pZYpm7JBkOgXA3tmUhrv46iEpM9M
	 v+85DIz6eTDz2unMLdSIzp5KYBIU8S249YaE9LwnJQa0Q8W79nWlOBPP6iOwnsV6b7
	 He1lZJ66xtybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E57C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170220169637.9088.12948721633080156909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142d80cb4929cf862e46046f82dabb67fed8fc3f51eb18f18cc72022d6a58b10
Date: Sun, 10 Dec 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702201696
