Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73A37A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646887285;
	h=To:Subject:From:Message-Id:Date;
	bh=88tmiKYpkSfa2x0IDnLIIjj8L33UGfdHD2zM6UCSjp0=;
	b=WykpJ83fbJKc+SlKVXI/190UPQ5LvFJns4MwF4gJDS/Tbcu20xSc7K7swDBmSfW2
	pZz418WMsWSwBIiqGMI0pRjSH37XXwWfhttS93KqXp2Acfb82+mCWZfvTtiT3+6dN89
	OyQ3f5rBOIIAHCM6u8dDdgBG5ypj+bTdy3phOzPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646887285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=88tmiKYpkSfa2x0IDnLIIjj8L33UGfdHD2zM6UCSjp0=;
	b=CAUu+aNSp7m1PADL8qsHdYif6DibxiZ305qcCGGeu7/k5H2rsFYkosL8PV7f1vM1
	05xBpmlXPdu8INfWAWpJPp1Hwp+QiNwq8uOFc0i1Y13l5oRjHtW9oVCXayhA9aNXi8H
	ojH3nTA/VmsKFkHPHtW0A8sOXTBvOs6lonNUEOW4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7221b08f-c5206f46-cfbe-4b5a-9ac9-b9f49e11828d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7fd1fec597726533970b7898485611a06eae3356f3428e7d4d135973240293ba
Date: Thu, 10 Mar 2022 04:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646887284
