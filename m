Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09D36465
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647987385;
	h=To:Subject:From:Message-Id:Date;
	bh=14G9oFCfmZ8ZfrEJzT6BumER3PtRUSoDVOHeILttJb8=;
	b=JFcOdce7+DG0NsLjwDcYbHMrpcSWYQO36NrtV9/c+qTFwlCUdYkWccjsTUoOegUC
	fFEhlUbr2rKO/bwgCpSpzqBMMAyA4BgD5X6+rsrImdfWLP07aJKR4soB6Xcvn+tPkzo
	DQz1Q31IX5miPXSkI5rLTP9OqbiTJOD9b44hbxdQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647987385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=14G9oFCfmZ8ZfrEJzT6BumER3PtRUSoDVOHeILttJb8=;
	b=VEZeMzsJZTTPkGI9Bh1cakOzqCXdjjAmCcMvKfBcuZ5lM8d3ISJGLOsUVVDccvf2
	S0gkwUt2DLhk+M1qr1sCDqqJdigDG0wjX2HFQ2QZK+tPjXOk70Scy/qOGSzXNsyjKWp
	QH6AevZDYCs1zMOos4ouKWUomwGfseapHyRZ5WCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3b3e223-a3a7b272-1714-4e23-977f-0e6d083703c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e567368b55b4397920ff96f2cb3038f44ee974d65761fe9f3a9b6c722398baa7
Date: Tue, 22 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647987384
