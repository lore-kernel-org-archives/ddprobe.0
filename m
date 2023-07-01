Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8385CA1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBEBC433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688213048;
	bh=v/o3dN4WAvifjI/4VSsdLGyHLAxMdu5cQuwLbNCSyRs=;
	h=To:Subject:From:Date:From;
	b=oOIj4l668qmuVp5M9jq4IQlVmLDTFhCeIk+aMeLTF/nZX8AhXUPw0RY8jNochXkM3
	 5y2VRflnxVRjHkw3WJ06YkMdr9aq26Re6ZzFratlIe0bSIXZuwD00V8GMM4U9wW+tM
	 VuFd787ZIxo1eacd4st+PX50F9sg+T9Y0lY6sBhI639E2Jnmbnwi1japew/icwer9Q
	 pxf43SXZGGFMZSoCe6BQpUi/rRNRcLGMzg14yazJgQ3wCNmDo/5pfIpDebczAdOog2
	 hNC6ncyERvWy5MuaLMXgXd7Jpwz26AUWUDSG89km3y+8ZSz6AXBB20wcZKQwVI2Dz5
	 eaYNOtnlnCiKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A914BEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 12:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168821304868.29752.6922375230967482276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be739ef43e3d3accb2209f18333e5b951eddaa58b215d617c6683d75cdbccf83
Date: Sat, 01 Jul 2023 12:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688213048
