Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA1E1CA9F
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXcQ1aXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 781F1C433C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700831296;
	bh=j4OetCpJyFK/hSnaFgwZREBdqDYFWX+4iteQIi/k9G4=;
	h=To:Subject:From:Date:From;
	b=aXcQ1aXCPo3xkfKfoDLHT6ns6YCfV4tUjGgMvoNdco8HOa+kxlu1urnaIeqO2ZPDG
	 aIugT3hGH7YJod0zSDSP34/4qMULDLw4pLJVdmB00LmxThVRdQNTO4/eBUP19x9XCd
	 b+jYuBv7kipLPHVDjieHipyQkKReoZj46upMUMxaPVRv8lKDr8UW7PwaSsr8jAqIWW
	 gGwm4woTB3mzOPHkqqSkE8vZgQv3/kTBLGtdrySbKyz63PmkVr/EEo45wGYnSU+Sx5
	 jV58FvKZaNngGNvmcm1lQylZG7khvdPobi1852Q+hZo7/8lEBFVVFtK/Gw5tFN912/
	 eyCdrZE3yXI0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBAEC61D97
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170083129637.21471.11470857347432294914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b77c2952b8a90bb73147781f721b5d0c8b3eabf74a276ac83c9c4d761451eff
Date: Fri, 24 Nov 2023 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700831296
