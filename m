Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C2C1378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648023085;
	h=To:Subject:From:Message-Id:Date;
	bh=1MzmJZuIfD0kvqdmlPWwzRcuOisD/BkJbt1r8xZFekI=;
	b=fcI47hwlnkXT8ZiJRpIA+AfjPcefW+Lrbw/PgxcJFLAAa8x8p1BLMbJTteVPNSw3
	1FHlJQOvIMBID1LKhYUcXJruyMeNs8kP568/U3Gd2FAvdWks/2jFX10gW400qT7LGV+
	2KktfqktL8yhH9D03aPNcIeVRi6DjdvYYtEHBSj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648023085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1MzmJZuIfD0kvqdmlPWwzRcuOisD/BkJbt1r8xZFekI=;
	b=Mefq/hApspQRjWJ5yOIiqRA66TaAFjqtoi/tFvjedwtD/P6lUpI/r3/q+mhpei+5
	OqtXlvTwEBrbtO2ndgNwnCxSH42EAoFsg+NAkkFfHiVfwCx4mzp7GEZsOw3w7DOdqoK
	MGzqncW1+banw0scdVJnjo5flyIAPCV/0GYIbcLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5d49ef8-f5399935-5695-43b3-ad45-bf085535c1a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e731d8f5b2f0972c4fb77ecb7df1b4c350b3174e6926b491f139fde569ffcfe
Date: Wed, 23 Mar 2022 08:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648023084
