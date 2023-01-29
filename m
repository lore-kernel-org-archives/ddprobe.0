Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4519620EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA9DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674998585;
	bh=3fzv2ma01xEv+MWiLN+k+GJH3AdsryIy/1tjNjUfESo=;
	h=To:Subject:From:Date:From;
	b=r569gh7ZjxoYzOEwY6Ci/nOdh2EXVwjADoE3JBEhON3ZcaPyeyDmcmnBQuea5CGy+
	 l+aNb5ZUd/SlXH0xtx/bp0SLPX08T4Wqn8thCu7JtqmDFUMujXSxmuH45P5d+nVd8z
	 a304Rk7nLpf1YjhhI1Wh51X3VlKKQjiNcTmd2NyW6UR/0KTst/ruZl7W/oJt4E806w
	 anYqAAkOWyN7ZkXgAM7BzZVd6+KQmfK1zUbGMvkCDIvJu8R1J+GxQBFG5o3REJSK6C
	 rPBff5A6G8ObH0KYAllcZ6nRF/NlarLvfXWgZxF7Dm5DVHUyoXMLoASjp4lt78LPTu
	 gjae/0T1pLkMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF65BC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167499858574.23065.9214440776011347774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d69628881b6aecc0b1e2923d45eebb84e16135ba24854eb5162723acc178de1
Date: Sun, 29 Jan 2023 13:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674998585
