Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFBD1876
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 22:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644962485;
	h=To:Subject:From:Message-Id:Date;
	bh=yUcTh6wfFBYKBCPH3z5r81cw7oYu5H9TE8v/0td/0VQ=;
	b=KEecgdutp2Y5fznnHCldg61LAof43cwN/ctRHfIaiRN7kszT4NmdNCmlJ6+NwHfi
	1n59mtcVVZhCqYXuftxs1hcTq+ywYKC7qrAc19RVNoCKFjIw3M2woArgxxPtMLTf4Ez
	7Xi9GmxCd5mRU5fxd8IZR6ZpkFY/Tg64S9vYz4Hk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644962485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yUcTh6wfFBYKBCPH3z5r81cw7oYu5H9TE8v/0td/0VQ=;
	b=Uy4vadIuCClSV1QpR/pAiM8u3vtw/2Etv/1j0/imGCNP3bO5RJPaHXb8JP728Pz1
	NrpA1ILz5yHq2Bc838C5QTJCefezIc5aFSnAFL5134clczsAtC98W3X7AnXVdpx1mMw
	1pqLf7gO2/mjvF24EQ4MLPb8MSqSnAXLdvBFkI2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eff67960f-254ee857-2548-439c-b570-81ffcc5a2d15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64a17b1aace05c8d24c87166a8163f699584759ed3c64020047fbb11eff5cf59
Date: Tue, 15 Feb 2022 22:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644962484
