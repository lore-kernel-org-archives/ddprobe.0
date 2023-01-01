Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D877D17ED
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 813BCC433F0
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672552887;
	bh=RaiHEl4mmQUayBgaytRZ5+tFAEE2k7xwvUFUxOyoj84=;
	h=To:Subject:From:Date:From;
	b=tGv7sdfXPFhoU9JWE42GfBgpluhqqmsBARcPUI3kcZ5wxfbI8hu4mbx3DozG8uwrC
	 ABIUMHe/4oRTX4KpWMiGN/qbPOGpjt0wqGvDqBv7sfQwWiYszDCGgy8Lr/rkPXeAfq
	 D58GUIdgVQB8EAkqukaNv6Y8BUf+5f+XP38bc+4SR8wJ6I445FVARKXGSQxwZBQyIf
	 HmWGIG93Oc5OV99j6fv2w1Vk3Ks8RGq1+gMXiWVTPayrhcU7wIHwWQzNFbZ35FiKMN
	 MM/MQs/RPCQWirCknQUuwJAyNwzdMAVpUFrQ+xUfDOkh1xupLfVcvfS4RkBy7j35cZ
	 Lv6JPpH21ky4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 642FCC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167255288737.14474.7886828584586846368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad646753f9438801c74e699f25318d5786090fac110a8d2a1d8eb1091ffa52f8
Date: Sun, 01 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672552887
