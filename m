Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885F4EB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644882384;
	h=To:Subject:From:Message-Id:Date;
	bh=LjksSAfwTdT5OA5gxWO90WaNbHiEqqt6jytfcvy28PQ=;
	b=UXhcLcLn4cj7C7VlvAA+pHrKZKYOarBvEPUwimPaFLm2DFsgQe+VE5haQegojVtA
	rxbOsq4eJyX1MtL2dptO9FVfObbivcApsH8PvqM+8UoF+wVn1JlkCOmJ8L3oU/EnHYj
	H2LeU91F1cXlBLkPmysscaBDL8i71hQYD+zvC9lY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644882384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LjksSAfwTdT5OA5gxWO90WaNbHiEqqt6jytfcvy28PQ=;
	b=CsbxqG/laHObFkWE+KB0jJmg/vHH3yTJ71ilYUrt+TfquUdYc1JPA9+CNZHPI0VB
	BZJH0lihX89CTapz0vcgsNBYC9j6RjYNpC1IJYo1IVKv3Mi4B77U+d27wdeKo+woDAW
	QFxF/oJFXX79Z2NuPGsGbtojUnlMbmw14P0KOqAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efaa1578a-7c2da5c2-15fc-4650-a7ef-182df17d85a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92b47c6956a473047ed84ff4db7b63645e13135a94e870c891e8269fd3c8d09e
Date: Mon, 14 Feb 2022 23:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644882384
