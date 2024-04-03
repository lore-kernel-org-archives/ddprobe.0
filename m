Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA069156966
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712182697; cv=none; b=rnoAr6sxbao5u6+l7ZcJKsHezUNrkCdxFYSovhKdj9AYDA7wGKjP7uSl0bUCSYIi4qxeW9P9xyuWC5eTMDeyw46Mms9M5reOakfBHU6+NaQ1s56+VbTwAKh2u0AOxKcr4OKrohTveM5/OpPxsRbK0Kb8yrT9+j1Ac/DHxt7Tf0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712182697; c=relaxed/simple;
	bh=cVrUUYvz2DHREQPnjCHyuE1hRXniOby4jgEP+Z6+3Vc=;
	h=To:Subject:From:Message-Id:Date; b=nN3qGc2N6p9eOR8eGUhcvUrFO+8j5NIy6Nkd5UxfDfCJtaTC7jZeyU0a6zvb+hMEOHh9VhsZPSwA29G6QmDjs8s/ywviuZYjpWaXkYt+3m0DsPgihFo+gdCoNeRETMFbyj+FdQ7lgxUUVVHrOHtiGWTDjVTvoUI7BGJqBQvvyt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vvp15jAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vvp15jAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DC3C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712182696;
	bh=cVrUUYvz2DHREQPnjCHyuE1hRXniOby4jgEP+Z6+3Vc=;
	h=To:Subject:From:Date:From;
	b=Vvp15jANK4cpOb6e27f9XC2NfAYriZbYO/+F1nrDvzIg3BjEsNdKT7XfuuF6I2A3H
	 1439Ar7czd+45Os1j8lzbnWqfTcn5vKjyicl9nNgxSx+CMcMBGvwd4F3TJGaoBD3wS
	 FnArWJWMHNBE3hKtT9CAfipsQmR1YY9ohbhOSyUDclk+BfHSP+KFe6e4QG6VvJ6Kpy
	 OuSg0ej78vtse2odvPfk/LtAt82LjkCknOd9zoCBPrRgrAqHZLpgiz3a6jW8M+DmGE
	 eBb2Nu7gtv7NstkD7ZRiBp/A35AAs3Ix91Wq/RVf5tA23ThZpPqNBBb3YeGyHGkduR
	 f7IZ9CRhS75Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DE8CD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171218269638.687.9108619676227067359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c28565474e7b107857dd0c2e41fd779c82714e6c7f475770af4648de7c9ff6f2
Date: Wed, 03 Apr 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712182696
