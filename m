Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417AE19E99F
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766913834; cv=none; b=lbL9fSeQtKh+PLyAGVmrlz1+5F1rjdIYTV7DfX68/bwQbeC0XTEH2noYFmtPIPJo24RnzPNV87lTU3u8qfOpTA/6rODpkyCy5+EECRW1g5EoBwU9ysetep9WdOd7v3CdRVQniWkUUyRS/d7Nkzm3ajn9vrnze/n3vKC8Intk0ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766913834; c=relaxed/simple;
	bh=V0hotdn0wFlhFhyD3n+2oZC7KDXc2YxwQqQs69osHzg=;
	h=To:Subject:From:Message-Id:Date; b=dA8mzaDolzzbC8KDulU4rR3oS38xccgM03CK4tpr1TO69D5sIPdqEfNJBvhREHmhhZxe1ywElUgYebCuZDBW8Vnt1Axq5JbLcZdMH6xKGbN1Jy6bwCdp2XnYl/yTHGPOLiQSvDEAUG0cPfCuIAggl9nBasav0FXVT9HpWs1HiIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNw8ibVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNw8ibVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFA1C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766913833;
	bh=V0hotdn0wFlhFhyD3n+2oZC7KDXc2YxwQqQs69osHzg=;
	h=To:Subject:From:Date:From;
	b=LNw8ibVkefbaIkd+WyJla/z/2Vkz7WlQlnJWU3zdPmeRJE7kl22CUF7lP5YnfdA6v
	 PD6mZN6UTJsCWmF6jKZ1i9WWc81Oe+DGYrKG3jDBR8Izxj7ZkczPBqgF/Q0+pRX7Ys
	 UAY2WcZJen5ta+qvn8udg4biF/kxvvjbijrv9pOcBZcR79kVfgOgmX/maDnJ0rcowi
	 I+hVzcZ8mNzDdHawjM+//eDgWh7RZxUZ29ZVatAnNXyvLIeDy1XPJEJvz1rSoQ9DLB
	 pgtBP272FCUpMMRV5a8B0BgIt+6fnIb+DDcZguuAi3lY+J3P6nbCTvJmTl2SZJ3VOK
	 qBgfLwG707HDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9961BD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176691383358.30996.397386068553448495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a40d94a1441679efac06ce12a275e9cf30aba2cd70dc3c793686f50ad77cd89a
Date: Sun, 28 Dec 2025 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766913833
