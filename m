Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E094CA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644866443;
	h=To:Subject:From:Message-Id:Date;
	bh=JaQY0ML381bSXr6Eus214KO5a0KnbjEb3gk3kleV6lA=;
	b=Wr1wJ7i7aeFzYUpdqtQlJDt2QdOoLzn191601n4rQR+GwfzErPj/Y5hU2430yi1D
	zld1oeFiNsKpGSRPtjSxS+zwUTcGpk5toWEWLoui9bgJq/F4qCKC11mVjJG65uTOIDm
	ed7b2G1OethfKeiyW1MsGelyO6FdQgqmtMerKDkI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644866443;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JaQY0ML381bSXr6Eus214KO5a0KnbjEb3gk3kleV6lA=;
	b=SS5GmF5HeYrqkKFgn6hsGd+rsdz4Eludpjq55qUi9+qjt6l/sQVzDd7n3SY5mpta
	10P05oEecqsDpv0+doUl9Uw9XMj9Dz4ZVIDq6SuYNpVha6OE4ByJ5y0V3GAa69/XCwm
	Yvhs9mQLcpVwsJ9LMDKDNrVoVx905mOPe2gHCcL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9ae1760-536691f2-70e3-4639-854e-7bfabe19dfb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6b7605f2e199397606ef1ed3d6ab14132457bb926333a652b702453c8ffa57c
Date: Mon, 14 Feb 2022 19:20:43 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644866442
