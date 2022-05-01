Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1ACC2918
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 20:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651435259;
	h=To:Subject:From:Message-Id:Date;
	bh=WdQe99R9gayRZXLWTtila3O6258XRphuEn6N/y96If8=;
	b=VEr1LOwy9K90dXhyE7tE2RkOPNiX4Poeo9O7ohF5HYyF9UgZds7YijQcODD54bJS
	ZDYuuYZTn5H6tl/Tl0+ulBm+gLvT7BIWQWaFhLyAzYQanJMOSGPn5mzQQmlNflue3XC
	PuEmRflwQV1dNaWUw6baiswlkwWU9ICR4lYiDhbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651435259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WdQe99R9gayRZXLWTtila3O6258XRphuEn6N/y96If8=;
	b=c7tBrQCDSxcI9NoumPwpdRxMwIE4+8+tCNAiq75TDqFfa2x+LcRTcH0qJ1fRQxlZ
	ypdfbMqQt1UfzhXvwEzuE2XzXqLMocv6mxzgqPUyxYXqJEmjj5moSrW+3EjPrD04EkE
	mkkEYqAP+w18y6M3AJdJQXvzZwtmZQ5DzDls8Vi8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180813641c7-f29a178e-9ec1-4946-9939-e9636e44fff7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 278550ba075ffc99f135adf0a072d91e63f56572795923eb63570f8cc5473a6e
Date: Sun, 1 May 2022 20:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651435258
