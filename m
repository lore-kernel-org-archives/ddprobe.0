Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1589E3C493
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urbCq5DB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78101C433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701886696;
	bh=odTO/bLZYndfW/cO4eZdwFV3BiZFzfMKBRrxYQCDN1Q=;
	h=To:Subject:From:Date:From;
	b=urbCq5DBvql5kYYFo17Mgue9S6E+9Afmm/xMc55SnPkepL2RGPyBQcXEtBtgtbGzc
	 jlQWgZQfMDg01plEMRMVuogWsOwyF0IBH4O0q3Ul7RgMRZUTlese34g3aNgwO5rgVS
	 LF1aNJl2c0vTTcQ3w1HK+dFbYUbpzz2RtkuFw45KiFcGstfp26wirB0Eu0/wiVq1Xr
	 slOYh1VYScYx1XjNSljvh3yP/YwcJVn0rI1Nrps3putiHecq1zU1vrkjk1KybxRsQg
	 x1YoXlmXzS9OD7dUphG0n5k/zch7X+M9SqoWpZMFze9xAIRrjaYeFqQTqL1Ipk1AwR
	 ob9YIPzTTQu2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB2EC10F04
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170188669638.31080.8873662728806193308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65733848884884ab214dbabaecd5c8baa68e564eab84e808cf33be6f291e4bb
Date: Wed, 06 Dec 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701886696
