Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F747F
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6619CC433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664005853;
	bh=0YTvz56KRbt9GVIPiNQV0cgJbP1pIqTXWC3R4g4bavQ=;
	h=To:Subject:From:Date:From;
	b=Z95eNCv1PyNnycmR77GcNVqUSVOh+/FNrCjZe88y2dLtlkVb1lI1ZW3euiDR5RGqJ
	 yWcPKwx8f+/w5hYH2ZqbeQ9XvzCWq/xibNbxSMpvwfW5MG9Nxw9WzoQF12Awj35Nnb
	 xs3fFqgM7yQnW+W5hGMlFeHRHhQTmFyN1BqIcDawgXAZPM7kp1fc36A49RfkrgIh+a
	 uaJyl9Sx0c3jyzyI/NjKnIq7FuD4eSBrdYeNtyg/IfrXH/oZZVpOqruIxkgNvJXNFd
	 ls21wQlgKmPsvSf2ux8BChlNzRfEeAQm/KZRAasV66yObMzf2gLXxzLjjDLsehOzWZ
	 4cjkbC/vtpXhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DC76C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166400585331.22554.3529875632924746942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b56e7ed1e0c4a88ec3fd7f41fddc8548e476e880057cfee0d703af8d7323f2a6
Date: Sat, 24 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664005853
