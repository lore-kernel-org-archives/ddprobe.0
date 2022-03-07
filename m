Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF0097E
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646674884;
	h=To:Subject:From:Message-Id:Date;
	bh=rC7d7cMFtm6r/BpCSj5XdnVYMLgaYnsyTyO4HYZSm5o=;
	b=Wap6Rj1TNQDbHmO7NtkMRcWv7fdntDP/VCuFe9St/DWfqMWh9lkVlgGQ5kHmGucp
	GRv5O77RgFUmBptnKJz1hXlSrrTK5ER1CgC+i9LRdhHaYIXJz9qHPJM5UZ5EhxALxqM
	EiCIG4MECWkMMSIqOh93bhnkNyJG/R5R+xFgg2R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646674884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rC7d7cMFtm6r/BpCSj5XdnVYMLgaYnsyTyO4HYZSm5o=;
	b=B56zwjZlB1/G3SEsnsmwkke5z+ShxPWTt43zKjPNhBI2XnqVAv30pMW/9cNFEYwb
	g5MTWSCt+qsYYq6viRHDFa9fWpRd724KriH5GJb+Gy3tnRCb5gr2pb2JY8UJTU483Yh
	5sCJDBuXPYmQbUeP2JJ553ncCqjgFpqD5VCfXuwA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6578b8b3-3737a423-2124-4117-a0ff-47ba0e8feb17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da5e4f2c37f474adf9f4a711735c4e8e8f22ce45aaeb9ecb50bf765147f6ac48
Date: Mon, 7 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646674884
