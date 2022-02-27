Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD062F25
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 16:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645979485;
	h=To:Subject:From:Message-Id:Date;
	bh=7J+XbuE40IGeUaDJ3S/xUjrBPDDQXdMxrcWiQIieYdQ=;
	b=RmJ6+Z/vywtLchsls1XQznAGQA5JcFrqJqRo2Dg8CS8vFgdF/9MwSsP1zUXheTvJ
	851U9X4Dj1nDhTQ279/h/IPQt1bovhXmP7pIwDUDF+X5wQJMZH5/mlQnoKnHMNHOpnl
	gi5MZvB1nn93LoXYRY32JdFYaj7X8oJ5zO4XgpR4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645979485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7J+XbuE40IGeUaDJ3S/xUjrBPDDQXdMxrcWiQIieYdQ=;
	b=EiyMsYj0nGJKNBVdsnWOFKDZsKCKT9wlZsrbkeKzFB3LP3nUmNa4i6GF23Za9Lmi
	gVYdaaKyvUGo4PYdAPmetWbCHDaSgZ2vAZ2WMP21tA/cMZX1oc0GFSxV5XKD+iYqQhD
	93onfDiDD0GL/8hA6dvNvI5boUpc+qAs1R+rycEg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c05c284-097ac421-02a4-44f3-97d1-26ad569c3929-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fbc094cebc0aaf566aad576bfdfce3db24f7f66ab1ba20efe576eb4fec06b91
Date: Sun, 27 Feb 2022 16:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645979484
