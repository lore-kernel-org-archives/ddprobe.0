Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893D27E
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646544685;
	h=To:Subject:From:Message-Id:Date;
	bh=gQFmTZog6qnQhuEFGfXXiCmwLmG5yvVi+iq8ifGR288=;
	b=mvG3ilhVgsZPg+vydHhaqtV6x2zRssirxSO1yY9GrXp9abrqdWr7j5h9Xk+TCWdD
	3MuETab/eElGhphxhAvTe4oAJKaqg95eTsbq9jUNeGP1ErVPVVIKOQy6bGLiLBZ/N2s
	VeqGBLjo99nv5RRYEs54i1jzfSRMdrIpE69RaO94=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646544685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gQFmTZog6qnQhuEFGfXXiCmwLmG5yvVi+iq8ifGR288=;
	b=FFGjZq4fpehGG+XoYJa9FLm6JBG2KGvQvl+8UnfPzhi3n9I5y5Sjjj+rnynI3NQ7
	ZDUeTxHnMmjetvI/7bdEEAwet+Ua72zVtaC0tSW4dudBp4+TcAVGLTqPba37D1dlQuV
	Xn6xGrk9gDwqPGqOaGokrbPQxM5uPwJpVuYs4JAk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5db6071f-47c6e5f0-7411-4f91-aa7f-87e03bf03c6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c567646fcc11babf0ac872cdf703101a07c1bd380315b79db089532c834424c3
Date: Sun, 6 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646544684
