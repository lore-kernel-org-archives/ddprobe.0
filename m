Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112292FAE
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 21:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648416598;
	h=To:Subject:From:Message-Id:Date;
	bh=uS28xnXwX9M71DgknPKfrKQ6HAG275WZnOR54soZfoU=;
	b=l0lyRLdIgInDEk6GpLgWswrF6F06d5D2+w9nB9knCSAZcfDHAx5GctPG06XYEOpn
	ENNjoPGOivigS+sc+H3simgMWtFngXzfxfvFl0tP92LhgDR4CR5KRxubbP3Uu9DlQ2Y
	EaRvMAfqIdYBLn7SPADxzSHo584+IdRazVCJ6Idk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648416598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uS28xnXwX9M71DgknPKfrKQ6HAG275WZnOR54soZfoU=;
	b=iWT8DaBRp/6vjjZdJ+THY0F4rN+3q93wOperL9CkJ7qShxVUs0LJeqQEZ6C8Lu7c
	ZtXNAJaprEYlkedrJpeS9bcCP8gCktr/PPvYC97Bc3s4otIHUSbcmZb/uAXr+REpXyC
	N2+DS+NOeA3Afkf5YSlIWY+iy9BdAcmYemKgQSzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcd492909-d07d3708-c5de-4623-81eb-800ce8550378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afc6d1bedd9f26aa2a684e53a2f46a63fb29b6ce445b252133028b9ecd27f854
Date: Sun, 27 Mar 2022 21:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648416598
