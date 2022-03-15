Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA3823B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647360084;
	h=To:Subject:From:Message-Id:Date;
	bh=tZvNcQeVig/Ap3fdTQiIIyuAaNvIcj0e2c5pkmP4ams=;
	b=R/rab5y22+3nZo4vkcaw2K4clCsTp4LVW7znbHgcFjnnaS2svi/EbIVA1u0ISuhO
	oE6jEmNK/tcBCQxXDBXuMudT5gRPwbNsm+S390QkfDFAxFSEdSXddz09ClXuon6bG9/
	IBoBH8+yE6IAFSSeyrfpM9DFSiky3+J6nlQtLSa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647360084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZvNcQeVig/Ap3fdTQiIIyuAaNvIcj0e2c5pkmP4ams=;
	b=XjxC743ZqhJ5ozjzU8eKT3J6UxJA5YUeySUsDfp1GFNLphll2iCsXTVza3Rrw/8u
	txxoSamRkIS2BwcvFoNNYNeenzlMc4XDJwXC5D74OEKcZuOJ99cp0VmshFNzTRFiO7Q
	wxb0jFClSHdh9rP0aPVrZKM/BblNZk31qlxrUfmw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e500afa-fcf331aa-7c4e-41ea-8cb4-0378e59e9cc4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c585898161c61a275dd271f2c70e0f9cfea1c2a7b20dc35a22f858b2e9de9484
Date: Tue, 15 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647360084
