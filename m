Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D84C2117
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 18:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648578838;
	h=To:Subject:From:Message-Id:Date;
	bh=LqzQ/zo2fhTKGNk6rNzI+kTAK2DysGQa9IHqGo5mrrc=;
	b=CvZcv+MGzGVKOz+whWmT3wS0RNp6hc/wtPVFycv0z9RG+0Arrv2h0l32L3SgJ/JV
	dsLcSABQexnh8DSBOk/e9ao+RpeFe70hO9Muu+3U3tEBiNCCq6crylnjUv1Yo4ZkB4T
	B0Gax9LcHWtma4RlHgavqmJc0OckCEG+CR6AzCU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648578838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqzQ/zo2fhTKGNk6rNzI+kTAK2DysGQa9IHqGo5mrrc=;
	b=aFvT6LhLwaWmvnlFaDSw3MGYPIdPLAAO+T8gO4plCPCEOifVWJLDM0JKf9+yiH3D
	oNNCtkkQY2Raw9El6AhjNBQnLyXa9tgF3QNqltii5k+tTVv9AL6xUUfm/KC4WrxyJ0B
	VPFAYIZKA5k1IiHMRfWoSiYiifc1fPRXEY3GwH2k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6f4bf05-62089dcc-9d03-430f-a447-20db8b3fefdd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18d69b38e996dbc01882a9078c810185220a28f7d57a83c67f8eae6c12729137
Date: Tue, 29 Mar 2022 18:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648578838
