Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C4394296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647089785;
	h=To:Subject:From:Message-Id:Date;
	bh=JmAE6Xq6u/cho/XAhW+x2YS+tX1iR5w34qqvsBi5Vjw=;
	b=hL4RhTD2VCwhbIsdS4d3CZpC5uCgDpldCfJGgjpDxx8Z2X1p1fzjGW7+i8CLlHeE
	GFgdF2ttF11jazmDYHsKp4C2x87uDI80dJrmHCc8x2bVvwMrdnUMs/WKuZQrK4cKmiK
	J+qPLdJtcFrQKyzj82D2Hdwy7PLMbFxtWCManVsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647089785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JmAE6Xq6u/cho/XAhW+x2YS+tX1iR5w34qqvsBi5Vjw=;
	b=ZpCIfwsWTGGbkumve8m4coUkeL4YlIhH4Wp+Z2SEix2wV69AMFzJXY0neI+1s0SQ
	/USWAwJRKs6OGCSIpMA8wbhwI/HpGI/PvPqf6crJtaVxcH87QZ7YQpx/hA25MzrtZ50
	TfXH6zp8DZCHzUNKLKTSjGo4uiNo7T6qWqvAA0A0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e3397a0-fc6bd9fe-de11-4b6c-a06d-8b6e6c68e280-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f81e5dc90792a772ca757a7bf664b579d6aaa373876b090c0b4d331757be60
Date: Sat, 12 Mar 2022 12:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647089784
