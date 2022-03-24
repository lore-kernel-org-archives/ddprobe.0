Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE60A7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648123678;
	h=To:Subject:From:Message-Id:Date;
	bh=cmoWn40+lCYr1nkAhr0/r7IJewH8I+8FOKtJy4rMt+k=;
	b=cKYnCfRVKNvXck65KgSGcvm501LHggSxRKth/0i1oJrcBUIFw5toC6HMgV6IL2bp
	a21pige/3GTQgQmUcbdewnVwtZvTLlymWTG8DhgKCh/dCc5Nwmmi8la9zD8wMk8fg7b
	C73IO/dBp/eJQ5UbmHsb1zIg+fa/iisLgVBkwwZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648123678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cmoWn40+lCYr1nkAhr0/r7IJewH8I+8FOKtJy4rMt+k=;
	b=ACDGDVeAZ0WLe9uWHZu1sv0S4pfzalmgMwvkqI7RjjsRdk3WIu245H1spBXM3rMz
	I2JDopKW/0AD9ajtzMHi+dmEyW3eOYAVGFeFigfGMAZWijPVpx6ldqsoNAy1ItWWqFP
	tHupNVg/eNcniyerwNIDYDBAQncIaK6QWHAppTcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbbd38e1e-70f0e95f-17cf-4cb3-bb60-719753308d43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83ddb1e764c480ec0868dc3e30a7d48e7bac07254e5aa1282782638292106d9c
Date: Thu, 24 Mar 2022 12:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648123678
