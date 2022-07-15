Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6043D68
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657902412;
	h=To:Subject:From:Message-Id:Date;
	bh=XwvHXrrYgXvjWULmdkaCAF50IESJ/nQ1+uxh/rXaUkA=;
	b=kqm8Zn99gz8KC87Vhar1rwjq5Q9aZWDMfOz2FrPRBQZ1GC3IbttC8nDGNAV8O3aj
	7VycHAi1UDYk49/m5zNl36mWIITR8M4abZ9ShQwPWSwQEyb6FvE9fe56Tuo3w2uG4Qi
	hXX2mrdOfJkO7hs7wwUFIuaNSHUe1z5BW1URmJw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657902412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XwvHXrrYgXvjWULmdkaCAF50IESJ/nQ1+uxh/rXaUkA=;
	b=XE5vWXg3+ScZbfk4uGaGI3fct0uXxAb2tOSm+Vrc89ONPu4ixYsQ2Ku04fZsmpXZ
	YeoabQnyb4Od4U27HUmHHf0YVtGfoKf9kvmZT8wsMLxZKvecL+7+6SU4asSqDv/6had
	nViSyVNwlAEXyGiyKq1hzfcbmh/GYV8ZptAg3U24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202af3232-b9b021cb-2d25-4b38-9280-ed4a2ddbfd2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fab38e5a324056545e61d7cf109d420fd9653bfed22e56356d0175dc417a1ac
Date: Fri, 15 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657902412
