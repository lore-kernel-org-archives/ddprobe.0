Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABAF633
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D73AAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684467485;
	bh=F+baf72LfBSyD/0KcwidbE8e2Rp1Q/L7LRTRKs/ECHw=;
	h=To:Subject:From:Date:From;
	b=dapWslZWe7SMyGYfDDuzKUgJECXR/yvRyy6Qv78a0lC7zN004v91+yXqbOOBtYIZ2
	 zn3kO58Sd5730HlpnIK39dzQv6VXDrnBBR1HrJwCKVxI8ik20Tkwoh2EDjSeq9n+aN
	 T5XjNJp4bV3YiWYGX2vElryeGjtm9UHLpaNhEL+C1no7CwkO0NA+XTQj7XlCKn+pxn
	 yIpddcDypPqxlB0S8NuH7xMQiUWa2yz/eujIDe70bGjTLmTfW1ORtwSxpl6BuwhVah
	 LQMGe7qkl9HfKK1ORl60Juy8pod68rtVkj7+s5NUqGAiIP4mh4ywJA3vSCnoxUVi2s
	 QnREt8Eae2KGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8395C77B75
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168446748574.7580.6369693870796936119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f14681d4e1295e93597be1164d55c317cf2c57a3a7d6cfe68ed32c97cdc0278
Date: Fri, 19 May 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684467485
