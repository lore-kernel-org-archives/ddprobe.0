Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4902523BC0
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 14:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C170EC433C7
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 14:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690899128;
	bh=6MhyP+NZTFmUK2VQKvC5ZjGPToDjSqEs2AOaG+4HPfw=;
	h=To:Subject:From:Date:From;
	b=GCVTdX+weOJ8xkB3eK8fO/xZfNUJwSVTb9tw5soq+mHIk4LO8suy/gWYvR1rj6Uat
	 DfATQP2Y2ByWb5wq0IEgXwmAu+8AvWomA7ca1yXIInBJQPiM5gfiQgpYxOe61R+/BR
	 rwt2QazI9bqMeiAWeTabnnn58337B0tr6Fa3X6jl/XajBPI9oTR3q8WPngdAbd7iX0
	 O1sWhYZTb7mSgaueIdpmMPkjp0hmaznpa9o5p0w2/Rc87f9GZ5rFF47zq6Rt4RDSY9
	 jE5AkYvrcNset7t5dWq+CNygZgUIQeYvpR6O+CuJZo9Srgk30RjY3RXBKYV7u3/0uS
	 51E51g2N7TGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A75C00528
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 14:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169089912867.29513.1258148617153844315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d691bc25981fe8ec8f276ae865c64c379ce59aeef714c5b4690544b52d01a81
Date: Tue, 01 Aug 2023 14:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690899128
