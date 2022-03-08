Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808B748D0
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646748684;
	h=To:Subject:From:Message-Id:Date;
	bh=bGcl1s9XgOP37TBZx+iwMpw3meL0OASxzKfb6qiOvrI=;
	b=KY4js8LJ5O7D7+DRHn+XHqWrAZbt4d601XNcI/0MvRoKHJSGZj4PADwX7s2xwG7R
	fsrZNi4NDPh+LaXuULgwFT7seT+Gi/5+TPhBGcvyRqMf8af10CYv4pBtkY03pp1HE4I
	lvycIW4q2tiIdwAT3IwlsVJLMqZg7VIlgG/dU13Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646748684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bGcl1s9XgOP37TBZx+iwMpw3meL0OASxzKfb6qiOvrI=;
	b=XYlhe2M2FLVBdgc4NbkFCskbG3wkbEJ1eLvPLTuaIDZstYpE/XwLrPesWhrTxfHp
	aldZM1uXGh4ZP+UZjMniGckKNXSFFGrRril4sBkxCYc+7M1VXfhh1yVjwzt/YjSD2p1
	0TzakP7egl1bNpiQmceXsLyvhZDcalgXmxl+SWSE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69ded1b2-71e09c90-8619-4ac1-8db9-58d5c26ccd4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53266f38b74f95947dc8d15544cba9ee88c0d31cf422069892e638fc70708de9
Date: Tue, 8 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646748684
