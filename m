Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 596357B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645316484;
	h=To:Subject:From:Message-Id:Date;
	bh=Cc2i3Nz1GBtM/S9tQ+edDUeNrK//sZvikduISy5jMJY=;
	b=iJxCdK/HPfwupnFscNOznBxLTWDUDLOCVUst/o0B7h5k6uVmtKsNm7CWjMAX3V04
	uttLLJlirun+hvy7D0RsGp4sMiIG9RjBqQ1weObMQXpGHM2rSClMEOf+gvhx+hhRqQk
	V1lTlcFeW0znJe/Istv9l+Fh9+xNsl3Ecr4vMM8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645316484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cc2i3Nz1GBtM/S9tQ+edDUeNrK//sZvikduISy5jMJY=;
	b=BUFpmgjXWFVHxKFM2VRHSdP8fSfjlv75iCtP4XyxHEa1U/dw0kTC3x8jgDBkmExp
	Iu80tWmUNEcvU53xCBc2dQzFihUe1eNrcyrKHyfb+QqjVgKhIjAu+0TLwiHxP3711be
	rOdmh/PwReCkIYxCXqpZDBAz1rg5r2Fy1dDUrLMM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14812ede-3cc839fe-001a-4563-b18e-f30ac48611b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bb0e71029a3f2e087066fff71bdf3f5fc80ccc13382fe47e164d7a5e679a03f
Date: Sun, 20 Feb 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645316484
