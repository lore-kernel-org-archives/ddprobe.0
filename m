Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864FA1388
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 11:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644926185;
	h=To:Subject:From:Message-Id:Date;
	bh=GqNZp7rGFR15iuYSVFFlbjbB79R/jrRMT8hmvVn+Hco=;
	b=FwnkrK3cD8d2PRWUXzhP4tHdn4uzwUpNKb7Bc+BS1W/wzD9IQgFf2o/ILazDc6Jz
	b1EXgD4J/aXydsJfa+4LhiSvHBTnY1O7TYvJcJg0kTjUFIzq1gxXtbC/H3opkWW2wq0
	cXqVc/ftSXbRTW+UGAvj7Qo9M9qiMHTw5q3npNHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644926185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GqNZp7rGFR15iuYSVFFlbjbB79R/jrRMT8hmvVn+Hco=;
	b=CNhrYCViWtoRqZaHMJE1V0jAdqCd30C+HssbXZxM5ywJ0TW21ZYgZt3SaF1eiDrZ
	O1Vshe+usm8fpBT+Sz8Hh+ALzs3uMshHL9AS7juKVIYHLoyFcXGmjVe05+NgOXbG+g+
	kjVvEbalgSpPjUX2yY+z03YO5z2EwWAuAw4P2oKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd3dad28-7b37bb5d-fe3f-4d3b-828f-429e3537b90d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c7a7abab233ea15664347e69dedf2cb60f616377728cd6cd48028b8c5fc4fe7
Date: Tue, 15 Feb 2022 11:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644926184
