Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A205384
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 708E5C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661555452;
	bh=xNx/XzFJ2tKWMnO+q0PyR9oPoqB1oZTj6NDDpStxTXg=;
	h=To:Subject:From:Date:From;
	b=h5UtCHM7gXKEXfFLwy7JbRiLc1S5xZ7KO4H5KXqcHNHRte6AABzlom7hXBn0bffU/
	 qm8D+sFnIpbvDWu1GcREol7EdsaxJuNI2q+FwcFRJIBhvEAWK5dx8kDUEWi1J+LC4a
	 G8BSkhIooIchBt9dGpr8cKf48SZ23/RO1UYuJbQeOhVIPGvcpGbQuqdYT8JJRqZcLq
	 Sve53GjsJfaSacnw1nSEcZ95MV6ZFCHMMSicepO0PRjAhWklVnFN0/o88EXPt0uHJ2
	 3IOQ2jxd7Y+SdG1tTwT12qd97rJr+e1XtANkyC2ck/9cNESFVLluwUGV/b0Wn6T0HE
	 mA8PiL8b/fLXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54223ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155545233.18121.2058486067499597070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9718a7b44881e3dd15467e703706a49ecd763e0f4a6a00d44a17ec1f25aa7b19
Date: Fri, 26 Aug 2022 23:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661555452
