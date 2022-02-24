Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19ED7B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 01:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645666285;
	h=To:Subject:From:Message-Id:Date;
	bh=XLSeIkJQKpiwKc/S6O/JqnXngw4mTII02qen1j46T14=;
	b=QgWSRoB8aA7z8vJl4vXZqHdCyzCiRMx/6Oxk2lnDyHIcxAyQLV3NhqMN6IDGAYuG
	C9zHMQE0XT8vmQ1AifXsZstxR3ZHR6Hn1QpKZJDZmPqf5BQ0zaAmF2Y/N5ay+TtK2kt
	UHWoKfqiNJIzbBqrobEd2BcyPvh94++twb9y10kI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645666285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XLSeIkJQKpiwKc/S6O/JqnXngw4mTII02qen1j46T14=;
	b=f5vq/e/AweK8v5ofhAET/zeXQwGR4jJxg8iuL83e3Ki1RAmPxpYn+XFJ0lQXdZo3
	djWpQQg109xS+AqaN3SXWSnd9nBXw9UsL5mOErtftIvS/5Ar/4qLvRgD1SbzQhVPqoG
	Ji/YPfNn+8SiRuBE5MbefV3XcttjDksjiYmt9940=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f295ab4cb-d42224cc-e142-4ff4-a513-258316ef16b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f5dc6dd0efe090db2ca9549f83f5bf17962e761ba8c207f60602801ee88cce
Date: Thu, 24 Feb 2022 01:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645666284
