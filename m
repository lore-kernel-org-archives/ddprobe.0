Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB1AB7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646160385;
	h=To:Subject:From:Message-Id:Date;
	bh=Ng5ibvHJlFTSgUj8UFANXCr7XdAQID903a+XG2g6fXk=;
	b=e7QMkczHvwmRJSEIhkGrL8Ug5yJ3oLX24BdMqKBgo4nwgwzOFVFoc3dzN/UyH3iV
	+SP2mxFWtWznAzU/2t/2vWene6YG1hTYRC1uruHjYx9vKEvFEiIW3XUkmcf7EskbSZ4
	Ceyz7FH/Aq17yzVTjV1hSEfPdfoN6EzycHCyb4oE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646160385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ng5ibvHJlFTSgUj8UFANXCr7XdAQID903a+XG2g6fXk=;
	b=g/w27PB3s1DF48zFxj3m3OhlbHdh8vkqYBjxBM9RxnGT86RbVy3ug1eq+bV4CNGI
	wB3Y9gprXVwpC/iykgV1uGBLwM6PP0Tmu+28j3jQ+2aF1PPvKG+H68mRvpxulueXmrQ
	vQTgmzY+bWK70VZSmuuGm58oHMSt7fcHQUqNRPtQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f46ce137f-9eb1be19-3a13-4957-bce9-589b47b399ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2816a353b65116bdcf22d4e519a97302b68dc4bef607c5eef6789980a0d1b0e6
Date: Tue, 1 Mar 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646160384
