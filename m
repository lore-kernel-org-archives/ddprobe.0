Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13EDA1841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 03:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653623459;
	h=To:Subject:From:Message-Id:Date;
	bh=AopLAFBj3U5S2eZx+OLdfXcB/WCgYxMuoWTR8PtecjU=;
	b=lMNT+pOzongMQLqWRkWNmF7Q7+IHfuBaC9a+1jNgwyjpjpGqXZnPO8WhKRwA7Es8
	BY8T0xs3ZiXVXGt4x0/rpR+aqAGWnJ4NhXOKJ9H2gJBbCL5lZ1pNhDXahQiQXqyw/8B
	O3MnXKS+zLjMPNJRWKskcSuG3FkAjv7GzeGdiOrA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653623459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AopLAFBj3U5S2eZx+OLdfXcB/WCgYxMuoWTR8PtecjU=;
	b=HR3MNVWfSfSNR6tGtpueFDnjZMUNujAQhQr8LVj/3Msd9cR+rlD+R4LELa+ywxBt
	dmEVwAurfgbzMLASeeqtwubdL0c08QaIY6W0iOdRLOu3O5HKWORVbmUkCXOsiWm9C67
	HWJqpoGLTYt66SlfNvR0+WTAcOZHJI4FpjmGmdCM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103a38de5-11cadfa0-1d82-44e5-8cdc-19387afe2463-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f82524876a31044ef96f1dd6ae43ee600eb183e615c8e27c71f7b6d3d14d6dfd
Date: Fri, 27 May 2022 03:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653623459
