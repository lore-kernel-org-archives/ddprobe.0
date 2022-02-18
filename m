Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B661FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 06:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645164385;
	h=To:Subject:From:Message-Id:Date;
	bh=hnEj52YJOP4km5bMPU4PPkvdTpO12Nn8oer58K3lPXE=;
	b=F026VwJOMRtVB70vkvX4ObsSAJ4YfCY7MM9I2rx0QsLkSvMNx3/hJFKWjGIPoGTV
	FbVGjcgk3qV0ITaAM8eEaWR8UeajELSx79tyQbXZZL8nEmElBnkix0/E/sFFIaH3MnL
	/qQYoyl9rJA6q1pKFmB9F6niDrR72GzY5Nh3HIGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645164385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hnEj52YJOP4km5bMPU4PPkvdTpO12Nn8oer58K3lPXE=;
	b=MfH5hPM0m3dS+vUuK1zEgwXKbNSI+rQOq6VEPCuhDvTpGeIr0ELXS7AllfzhPeMI
	+A7NxPxsyz3AVo/7yj3pABbLkaiyN3WTlNN1UdDE9NGLfRsy9nmVK2XZx4Y0KCFa4N5
	eXF73swbN5yRd26+6mBKYGoo+2Zl7dMNgYrOJ0XU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b705204-7205da4f-814e-4f6b-b4c3-5dfcee5562a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77414b1d48e56f28e8b4e8ecb19d046549c5bf350228d307d2978528724c5a88
Date: Fri, 18 Feb 2022 06:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645164384
