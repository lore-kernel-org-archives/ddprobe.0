Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531A59446
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 18:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD74C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 18:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676657645;
	bh=t5Qt/mUZbz77HdFSfoU9dXdO4sX7d7XVIgaeFTyLGko=;
	h=To:Subject:From:Date:From;
	b=d/E8RTKWwqqWWoXD1Fo7zvE9vU/ZZv72if84MWlqAFCTJ7rW7EZGZ7wip9zHGfJ03
	 uRUh1qiMhQvkk+ayGEeCBVRNpoOVg8rhK3zLiaajbOEZ0aACMVqtfidwFdBcnYTTh+
	 c1mtSjsZwZ53JssQHnrGev2sIb062PLt3D5N6Ci5WL/ta6DVQcUPNUutDHsU/VvdhT
	 amAX4+B6t1GrlVzcvwuMlJ7lS0T3vFZn4lB1eqa1HzcSHvIjPO2fSoDWRJWSguyKQd
	 nlcS418r2s3wTqlJXt/Dhqzjc66A6mSFkkSce0RofXxi5rvrM5N5iimERL6Ue9Kmvf
	 fCJeevaY+HtQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62E1C636D6
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 18:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167665764573.10235.7854726655872635228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b7ed61b72fd622e3bca7ba0945071d0175d4d8d3334ba3ad12ff65468511110
Date: Fri, 17 Feb 2023 18:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676657645
