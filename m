Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B15C15BF
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 07:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpwosROn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76C5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 07:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697615832;
	bh=UdZGSi6ZaucBrXlhZXp4RvHegkXZ8xgNnhH98GlBRGE=;
	h=To:Subject:From:Date:From;
	b=cpwosROnlc9sGqrSHOVr8n7BC3Bb1nujfwPSxeaaRvoRys4W4DY2VO3W5yl1XWKJ7
	 pg3Mv5W9ip6HssfLck2xZBqCkuVBo9Iqun6KMopF5XXAzwSjf24QxbAFnRlzRszCk7
	 n5VxL0x/YzSiXYNUtvyROMXlJDBrwHEr2Ky1wO/CUXwBVzbfwEBMRHVTdu/DZHG6sT
	 Y+2zAagUbBB2WKMQ0BOI5skSsNLnaAVeebhCXxRNZ0BFdSG95ulNtsUbOqsTHP8Xsk
	 aE5e7n0PQ0vUrgbaw9tlQipKgyI9LR1DrCLnGLCjbfeQwMuiQ1hwLHk82JwmKxli0f
	 6pIa0cwwfHQ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94A9CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 07:57:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169761583281.9597.3126088522351003103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 152d9633607017748a51d23e9cc0917832603b1595681582f0850146821c2581
Date: Wed, 18 Oct 2023 07:57:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697615832
