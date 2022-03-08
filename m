Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5933D4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646758284;
	h=To:Subject:From:Message-Id:Date;
	bh=te1AvSEs1YVFdS4p19Z5Gihqik2ESQKJAif/Ohq67JY=;
	b=ehBDgYsZoDY2hz8Z/j7OIBKzzSRsaudu2w4tFLvPk8Zd/zSYIswLIF/s+BmrBSqL
	NStYD0cvonGfhGmuv9KMC3N0NMLU9kUg+hebmfKjImF8VEBprZg9zu8Zld0BZGD53zF
	ByY2sr9u30SFRdcNBri+zYe/heF5HYklrPQ3M5BA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646758284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=te1AvSEs1YVFdS4p19Z5Gihqik2ESQKJAif/Ohq67JY=;
	b=acj3mhfgHHQGR0Ixz5eb+ztZ50SeroDmQXuPfxgUWqtEg3+wM3dkJLQIWTgflpGN
	DEYoy0j4DnAjYg/BtdDf4v0WEMncxJUhX37bL3+0kD1CmSgbSM5eF6bExjUz0ZjSl9G
	EK7zrB75+k01yevvyrdW+PQwE0X3UGu69YnHPGrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a714dbe-b6b9cc2d-bec2-43f3-b641-ac5039b980f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6ddddb552f10d64a23ce13e16ac3ddd1e7d0e499038d736c500a72161b53476
Date: Tue, 8 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646758284
