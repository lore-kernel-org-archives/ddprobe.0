Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B78D7A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 09:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647769584;
	h=To:Subject:From:Message-Id:Date;
	bh=if+MA9XZ5yCRCvcJjJxvSXh/JhmuJZFYzDKtCC/tCms=;
	b=ks5tlZlEuDrpTM4/IY+dAuey/8ppjvcVfa6okCVl4HqBv6jeZdo9m1qyD4StzowL
	dg8pbQosF2r8uD6uvGOPWE4qbXQc4zwaBrIjO6vr0jTehmQOq4Yqqmt46ZJOvzfLSYw
	STnr8NfSfHsAs+c9L/OA3CXbrZUlOoa1uKfX1V4A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647769584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=if+MA9XZ5yCRCvcJjJxvSXh/JhmuJZFYzDKtCC/tCms=;
	b=XX3GxWf8jPZCzvalc3floB8zPS50JWg7VKveXI1a3hb78fWRx9kfUYT8sB72y2A+
	4mmFQHU6r2QR3H271456ILxdrrXaHrwGzn7gSh+G3lqYPYqHaXIleA/dbo7csrG+IZ/
	Pp5gd0W3PtLsyuQhWyZJMlw4h5VBy4mODH2mm+iI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6b88481-c6d382f6-44ec-4a04-9b86-b60bccf26475-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c65d2d4ff33b75edd8dbe823c17188701fbb92f4088c36e2df6cffd5e7c3932c
Date: Sun, 20 Mar 2022 09:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647769584
