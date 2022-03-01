Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EA0179
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646142385;
	h=To:Subject:From:Message-Id:Date;
	bh=w+E1G39rJWF2CR9nFjy3o3bfzx/q3u7JNPXxm7XpPu4=;
	b=IQNj3/s0ko3YMiCi1jFOSeZ/Dr0/vBp0dSS9YSdPr49jyRoN8bFqRAkGz7QdWTyE
	ISE2HJlLN7VEvZG85JaKncUcG5XK+W6yPNkre/TsDWI/OoxkLaxsSRmv6FFuhH7RMXz
	nEzJUGOfI1Fdhvv0M0N6rznilt0W/hOdX3XgC3D8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646142385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w+E1G39rJWF2CR9nFjy3o3bfzx/q3u7JNPXxm7XpPu4=;
	b=imKhpz8BmRaYcogbmcmBs9twsNed7YoAejDGzXD9xCJGQLvVlG6NLAJkbabZPLPg
	+J6z2nWY1Pw0VbV3+bCcSYpm4C8G1yngJ0tPs5nc82LaVZlEYD6Jck8qnRAXjAYKOvo
	BGDkL+3jgc6HtzszHhS7c1UMkzL1rkulvYYf+Y1k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45bb6a6f-679a228e-e7fe-442e-8f03-69c1a7d4f0a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1fed627d29d09c1a071d7bb437883b4a531ada96723a5a17e8c9d07ac5264c3
Date: Tue, 1 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646142384
