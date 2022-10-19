Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF14B2F47
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 711E6C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666186853;
	bh=3hnO3m8NVa/iywIFCL4qXTRMG3O6FrHhHhOf966dfj8=;
	h=To:Subject:From:Date:From;
	b=iG4iyEVN1iPVMza9bdvN2YleRcABTuIwHIi0DO4FHy6DoIHF8MXC8SzpnS0y0qJsx
	 3LxWB3Uc7pDAPxCXymvuFwskDmijJCNOyI+TFvwiiVD9/3Ny6EmrWWesg66kcZ5ll7
	 qW/DYFXFKsU4Z1gFWsdvpwtmT8LIM6ifiUl12sia1YqoGG4Tak7nJfxbQ8FzwSX590
	 WuGnojViksCpcKFCYOQRjQPSo0wu9WOTJTdWNbwxJZH85S9P18iLR08EXwpuj+aJWo
	 wbqS2AS73mqNVmUzy6rLbk+w6AcL9+ZLxplJUsohG9vF5K2rU3ZTeUr3GFpCgu5Dk2
	 Ym3uFtunydOpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 582D6C433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618685335.12659.12264151361139182679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f83dc9d4854c93c5c4c6b5cf9cdd7836f35a43bef8a392df6a912e19e4fdcf9
Date: Wed, 19 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666186853
