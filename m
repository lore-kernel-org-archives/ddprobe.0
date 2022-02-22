Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A594F635B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645522885;
	h=To:Subject:From:Message-Id:Date;
	bh=E38NmKQl9W5m0b8sDlIJmOVniPxfLKzUjlG4ydEqpqU=;
	b=Xd9pB4reqtUcneEL0lPtfr9QQDEQ9vDs34nNsZeayaur9hlnfzcrjS5dYJl84JHn
	yYo8BJ+FwXBa7ZQJj83Go7n8hGPiAABYhqk6nluq7TP6Q0ky1AZ4tBb8zZOaP+QveMa
	qM841CbgxftB70LUYz50W37YA5dUIZ6DYYOPzyVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645522885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E38NmKQl9W5m0b8sDlIJmOVniPxfLKzUjlG4ydEqpqU=;
	b=lIgfBbLPbnGgOTeaGu8vmHRlNi3lzOHHWN0+usQO0Ncefy/1ntArhD1xpusKfh6u
	TZjXDFu3s/JsZ5egXhxspeP/K5g2C0c5cFRb+eLYnVfsqKXWb57F/c7Ztg5eDAkz/Xe
	tqqeUsyDAm5q0jh/OMFmIVpI1aFvnxHfdt0qPP2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f20ce98d6-62a1dea7-03d5-45c6-ad95-b97f198ab93d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e9ae2e4aaf356c94fef73556ef53c6c9a5fd2856493c1ef812519d8c28aef3e
Date: Tue, 22 Feb 2022 09:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645522884
