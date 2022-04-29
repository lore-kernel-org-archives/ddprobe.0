Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4634E1365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 09:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651226398;
	h=To:Subject:From:Message-Id:Date;
	bh=EF8w4Nhfk6nKyZ9UKnK1W3A+0PAT4DGFBuqo44uFuc0=;
	b=gx/IjcexbiqD8vXQQettzArI97BBnAvwjg6J94e8BA87nmM2BKz/QYjleCEiuXpm
	2ogJhMQeTEmfxO5rF3q4ZjWDjHiD2Jr/LbHa3s2j7KJr0lvvVaFalNOPXEgON0PuePq
	yf61rGpqbTysG4pf+w/TdIVjip2sDNUDFOm2GJ1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651226398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EF8w4Nhfk6nKyZ9UKnK1W3A+0PAT4DGFBuqo44uFuc0=;
	b=ASyAVvsym21mFLgZRW6u6+L1/XvoW1N6fBh5Z0XAI9TpsKGfmc4ZEW0Pmuk+f41r
	57NFOJVh1dYVj9ZuFc/aPYeK+1zM8ohUHnZ2ldV+e71U5oLuK3f4LjQQ3G2ZdjId0U6
	a3crPM2GgdGyAnt8Fn4QtgIuDSyfEaDcjbdp2IBU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018074c34e71-eea8b1ff-3661-4a3d-8258-b8b9f2c1d207-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c50dd6108455af4a286a353ad22bb8f01b16abc7e4f5ac89a71550812e92999
Date: Fri, 29 Apr 2022 09:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651226398
