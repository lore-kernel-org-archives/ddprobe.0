Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEF61EA90
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744954; cv=none; b=IPqdr4rfLcWimoWRHNpNYiO1kPJuh6fJ80eRi1mPL/m8vcgvqxaqfamQz0eoRDPx711WncsQWbGmK3OR/mrs23t2c5lgNyR0qvHQN1LkTqjcX2Xe7uX9deo6T8mtOp+fTDU7YN6TE1VzqB8ompJmwzjNxmBlhaQM7veAmeYBBy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744954; c=relaxed/simple;
	bh=oV4weHCjW0+wU4t8OHqD4gmEvej/sK1mh4pkYLGXi2c=;
	h=To:Subject:From:Message-Id:Date; b=mjEEhPSDYmfovbM6WBBzg7Z1JBzpTg1RahEu4V1HNhyqJwEGDnN24QWiK6/WVRIcj8PpHukzl4fhkaLVxLfqlJi+i2lWuOQrwGDyDeODTpFVnJgMtwR5p1hQxD9v/9+nApI4HNr+huUSOL0GFhw6zOAfp1+47PRmdGe4ekCWCdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nOVyn0T6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nOVyn0T6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1E8C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728744953;
	bh=oV4weHCjW0+wU4t8OHqD4gmEvej/sK1mh4pkYLGXi2c=;
	h=To:Subject:From:Date:From;
	b=nOVyn0T6TwSHNt6kPYPb7C1h8bonfQNARPjiTTpVg0nnSIBsZFxn/08mECq1IMhLe
	 cKGl32HLxXk7zZ3MzGeKPyjSr/rKbwKpiNM6eAxOH0y1xZr7bNGWBltJptYgLe0sOQ
	 mzIwD/IJviXSuhORgLKxmfbkMfS0asPy2Y8JFYBL1vk8ce0TSrxYfQkPr1Zegj93BE
	 bTpsd6i9fV7QrQ+X2tNyD99RRqzkOltPf8JFNyJ9w1WbiOW0/D5pkZpbz+sERzCD5O
	 3x0fe232fI10D5+j/eOJMvTo1xALRuf0u+siBpSPbbJyC7Ve6QYHSdeXMMcOVp0kQQ
	 yPzEXaGW/eRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97696CF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874495360.3723.3171630414325731327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04645269aa051ea3fb2ad294280cfc42ccc33abfc76173456e5b0f98aabaedb1
Date: Sat, 12 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728744953
