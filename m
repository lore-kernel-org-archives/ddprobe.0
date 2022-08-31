Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2EA7E7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CE19C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661941253;
	bh=iufowb3v8XeIwGwlpyt76UA90yQVtfKN0o9JpqnleXM=;
	h=To:Subject:From:Date:From;
	b=Qi5nv3VRclnCppfG/vZd0gao2EmY4+BI1G+rYsKURxK9Ond3j79rabubLnOjFO4fM
	 UNcz69U7dYA2Nm3Yd4qzUyVujkBABvQ/TnYSMsDoSWjCFfTikMou4M6X43mLKHfVdq
	 swBmU4jhpkaQ1QecG/JtCoGtOQj3hVOu/dgOERu4d6AMqAsGE4P10V1Pm8EmnqSZ1Y
	 AeSLri3FUMbXakXosk3q0TNwrcTUk+kCcl44d8XBkcdK7SHZLHyllsIofiDcmT/DKV
	 sjeaXzL69rVsxiONLZFx+1n0Feg7HAo0PuIV0xaARS4QLu+OeiZJ/y6qkZr5eZKH+O
	 wDe+D62EqA9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F555ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194125331.24637.9655278019200430088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0750fc534d4798474d2f37b9498b9d30790a648856d192e306df62dce0e651e8
Date: Wed, 31 Aug 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661941253
