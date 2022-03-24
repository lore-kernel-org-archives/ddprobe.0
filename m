Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E158E1B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 07:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648107418;
	h=To:Subject:From:Message-Id:Date;
	bh=sZ4ruXdjcEIkCWh2uV+ztRw52y09C9Q/gWV4eIdFQrw=;
	b=Yx9jxHNkf5T0/vAZeZ0map21L/lb9+/INTZbvrAZX8xKBGSljn+1vQcxj0w9gPnA
	nK/pnBQWX5wH4OpPwRJqUvDp2s3sazMVRP53MXgeCXjJFV7sR2jhefoO6AQrHycXaxB
	mIeVrxjNTd+2rBEhFOtSfCteflOzyEWcw1HeugYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648107418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sZ4ruXdjcEIkCWh2uV+ztRw52y09C9Q/gWV4eIdFQrw=;
	b=CRPGBZDpvO9ck017iknpa5ER/a62mKBjnRkr+j7g+Z0D6bMGVtP4EL6UEFTu68o/
	nziNVz1N7ZMVVHxb/O0pFZpOLGxvWPZUL0ebscwxNy0S5unl5j5xuaK/SeAQx452CoR
	Occri8Wq2gP7ZRoCzsLs1fvTJiHVa9FYpc/KjERc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbadb7286-48e2f3d2-954a-405b-910e-8b9a86a5deb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37e35a5d35780537a4ab3b19aa9be9c28c347198c5f6aadc10209f019b60b521
Date: Thu, 24 Mar 2022 07:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648107418
