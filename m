Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF8538EF
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 09:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645868184;
	h=To:Subject:From:Message-Id:Date;
	bh=eDnYDq8wMRt+Yi8CNW1Z4sWWV+sRihBMMMi/KByEtLc=;
	b=GDU0YSD7cbChEaRdTzLjG28wgGNw+1gVttZFVe3jhxms3kjBpDzVCWHhj9y+3Wye
	CkomXqqOedxIdlyiFoAlSLV2QsX59KgRy0g3iEquh7ZiHHkqohgEZOiwRpWbN4FrMWK
	NuCGAdgjgb3F5bZuPekq4gJ/myRIqKDcagKJLgHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645868184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eDnYDq8wMRt+Yi8CNW1Z4sWWV+sRihBMMMi/KByEtLc=;
	b=NR9IU6WMYsGEt2sAhX1rUXtm+7D9FJpzutcSisXavPTG+l+jvK5klXSLERBvcjED
	7+VHL5+MiKVs0OPChN97so9yyTHpGvLNQrTu7hTw8CqTKx5GjEz7mwxbQn2TEJw3rbr
	lEOybJfLFHndOCkqzG1YqpimtznWZI9Eq63paIaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f356374b6-e15483d7-78ec-4d8e-8773-bf751f38430e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cc039ad1574cfb41ed1d6259a384be6af20cdca15cc4594f833c77314184d13
Date: Sat, 26 Feb 2022 09:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645868184
