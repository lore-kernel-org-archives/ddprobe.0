Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 963871FB7
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 02:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646621484;
	h=To:Subject:From:Message-Id:Date;
	bh=57mILfWi6hRN2r2TZkXW4S69ptfMYGLDHzXavnEAXdk=;
	b=JpMDiEwKj0EryDAv7X7dTFCV2aKWAqL4rEQmzF+cSVE1AHeo8G88Z7KKKpyG9S1w
	CfGRHScrFYTd3/zoAmOX1E+L3YyLRFGYVVyp6ruPdq9IxnjWnQpIfcGBBIsGA4PlwWx
	s+gynSyRQdtx9rhD7rNJRFCwc4YroiX/OTQPusWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646621484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=57mILfWi6hRN2r2TZkXW4S69ptfMYGLDHzXavnEAXdk=;
	b=ieP6SM981ryAWhnLld3iNpDyMOabnPpaYtDvwCKcTviYm7buKGMeyGosYZlk3DoX
	VgVYm8fw04YU/lGrXHKRaq6nGtu/M8SIDxNKyXGj3B6HNHFV6Z2ujRcym77QT0B/gA0
	Ho30BPaMhANfEYlhaGmHPr8f0ZGGn518fjrtPCEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6249e6b6-642f5f00-d5ba-4924-bdff-ddd94697eb6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 089a79bd8bb5d349651ff16bcc0fc26958b80d0ea6b7795217db52c69758114a
Date: Mon, 7 Mar 2022 02:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646621484
