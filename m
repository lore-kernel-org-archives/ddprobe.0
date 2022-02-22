Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73FDF6375
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645529785;
	h=To:Subject:From:Message-Id:Date;
	bh=hdh4uvNrybIvm983KE4KhM2Lt/A0fOsy6gAixkOc+gA=;
	b=ahkFOCE5ONPAgZ7vOVFyYb1CDkAqOw2fRgPUK5Ji/vjOVf/YTZDNsn0KJbwUy0Uu
	DKA/WhV5kV9DhpIGwcNOFhiUYtqWyzxyyzwQml7ZWl4jzFaISzbrlNVg/7BrN0MytpF
	tKaztgZ8NWvcnj66eKLkkMnyl0Nxlx9BGI5LhAsE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645529785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hdh4uvNrybIvm983KE4KhM2Lt/A0fOsy6gAixkOc+gA=;
	b=ePVwR3cBDzJruvXhRTTnfGpigR6Q/dM7wwcsorayHhNeLgwWjrMDoidaIK5+ZpsS
	3fcf5qU40X6vM4V0V9FZwfreqSrDN5+IbZE77u0Hc1A7W/Q7K5PyK2V4QK8MT+D8HlZ
	y7FR0HjtRTjYMrQD2vIiJPoTc62dMEAJOuXHO9tc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2137e224-3b310b64-e30d-4ba9-b801-50e12291a9b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efe18eee05891601c538832cf91fc1672b0071d77287d0599c144240fcc4e8c3
Date: Tue, 22 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645529784
