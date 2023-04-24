Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D53D3214
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 17:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9C6AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682357525;
	bh=NsTlQUx1KvbWLooVvWMNfwW+H768JbCY4EJ44sL7jlA=;
	h=To:Subject:From:Date:From;
	b=iJR859nQzJ8XBiAj513/zwEU4dA8zZN+rGExuoL8/lnK18Zo0uLbjla7KyZsYuzsh
	 LH/qH07+i8zcD9SzaK4WWRkFYna/5wS7oRKPDB5LiQH5Xc8CI58wN5EaDBYgN1EUL1
	 ubldgVp1DuVZ6V6xPQBzCpJkdixDNkAEhxrJi9yIxCLSaqQn+f7eqTwfN6aSFf75tL
	 23EPORQYBp1QDdGtG/elKHUobU+XucqgxzVXC8yxvAW1xNhQJxwL0fRdh7flTwJS+1
	 aYkLvTbcEuei2bZ85+CBvrEKMaV5NZwiKAhQr4TbQUKjzU4REE7jLVHYzcAm+FE+4n
	 XRqZP2olNfLsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E7AC77B61
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 17:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168235752578.25977.6846889300675295607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e62d176b35e10270276f61cf17089dd61c60cdd58eb76be73be7dd3ecda8eb
Date: Mon, 24 Apr 2023 17:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682357525
