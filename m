Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF35A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867319;
	h=To:Subject:From:Message-Id:Date;
	bh=XIdcGxtmu+2IbAl03sqvTUSDDvtEK1ENCpToDTCjrBI=;
	b=j9ZjaFL1JaIKC1raSxH6m0saU9CApWKWfIhl3lfo/5vJJAipXqxOvpUzjO5+puXY
	dKc/0zUcAJXJ8Pc3tiLHulbP/3dT7JAnk8nx1Vg6Dkn2XABCp/hfgEG+9vmlDfFPMTP
	q2csfArK94aZMiBAsKb2fMuk67yqSZMLW8O6fURQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XIdcGxtmu+2IbAl03sqvTUSDDvtEK1ENCpToDTCjrBI=;
	b=FjPjV5LdJ/M6cYor8mSeRPeQRkCRJt1l9OeUKPhUKOsHF+b6z7WIuYRzgKKXaEfx
	SYyCpB3CWY8/OpMEl248kOb8TYMcU07Ig47eAYEMV+nPHM//1uYOK4h6r+bAQzyiAo/
	7URtK1dhfTZdsJgyGEAn6uUtNXEzHWkCWQIQdShE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bb77a6-14de6f49-81c1-4ed6-82df-d2aaf8e02a02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b814f1fd7f2fd43a32539c282e36f0c1503bc8ed2195b9f19ccfb110178eb32a
Date: Mon, 14 Feb 2022 19:35:19 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867319
