Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB88EAD46
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7090FC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669843254;
	bh=Q57QBMdOCJOJxTLw6ABmQXQKLV0pD+WTZe8l4w8hQL4=;
	h=To:Subject:From:Date:From;
	b=jk5+2jolQZib7dyiurU7q1IK8sP3DRAI1TyugtXUtmKo/u5zcWfMj0yOHZ2P8ssD1
	 84QnOahI6MrR1icMjNPPntt+9HytYEGFzCQwpqbqloKPGwbYi7tVHyDUBrxmFosEe2
	 0q/sPj3xKvMcZ2DAVQjplY+YzYU8IB+trTqrzvp68X3BPKvzgaTkQSSoMKgkIueqeO
	 B+wNbgRIiVmIfyqIz1TFDkwQpOGRCj75d+UxHDU9NA7/tX8PrJhVAo3Iw7PstY0SfJ
	 WOu9/E62cONVinULunBNge1rQNw67aZnMHSX09uGpSOB4MncHJfnSCakcZfdADiR3f
	 ExlMUKHFmRLmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57E1AC4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166984325435.5170.15119545109918766870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58c9b2bda5ac94868791519f459893935ffbf031e512b39738c55d98a472b95
Date: Wed, 30 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669843254
