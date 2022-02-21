Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD05420E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645416385;
	h=To:Subject:From:Message-Id:Date;
	bh=91IRkiTtKHkOtvLB049DMzOLvP7xz3WUtNMzC4493uA=;
	b=j+sGyYmjxLdGYIdvRwszmNb0DrSIS0JMrhR2ciufF9NHkqq1ljEOrWditVMXvI8V
	RvBVLTlZoVpV6ohdyVsnOUaU6MkGYgiv0FrbmoaNpN76C6Uo9EjaAtteFTPmg2LIQjQ
	cgFRBcVCAgYZX0AoxQxLwUjeZR6OJHkzNlO07+tA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645416385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=91IRkiTtKHkOtvLB049DMzOLvP7xz3WUtNMzC4493uA=;
	b=a3Gxai3nVFfb5BEA2YHM/O9N0y6x7niCjtjsZVbPLQkh4Al+SLL3sKJngP7ZO+i+
	jsK2CyOy6tHzpSthGgSdWHWf4rEtk+JNbeUYnEEUr7fzlYQz4tL6fE1fzs4C3PHUhHm
	OqOotwSEWPRdDDCkezHRohTkR/7S9HEd6YaaBw9Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1a758983-70243540-f882-4f7c-b5b5-f40615511702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fd40593020a29f57dd73a333cfeafec6f8712cbebfcefa7d187c8539582fa6c
Date: Mon, 21 Feb 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645416384
