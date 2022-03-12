Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D997E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647073284;
	h=To:Subject:From:Message-Id:Date;
	bh=TOymMFwXTreR1oP7WK+x1N8sRVCS76dNdaxTm6uPQPI=;
	b=ZPwPrQ5pTkNAf0rdDHYxBk8lwchJTenLbzKFOGg66e4CJLJ0NIOkfAzb9Nn5hFf3
	VLHWngOrbuz7BppPBkkYrsTbaXBH2Yb3L9C/009j+SkRjyi80dEpWHXtSIST9n7SUXc
	7R0tWTrGC5l4bodbQyvFK+G8T9JHtmvMiyH0L+Yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647073284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TOymMFwXTreR1oP7WK+x1N8sRVCS76dNdaxTm6uPQPI=;
	b=Evu1RZHEpuCxa0c6nB2zj4VeOxfUQsiopCjywUV6qNXeOho2qjmKKUR7I9yqSE+T
	h59sc5VgMOB3OVcJSWc9OIBWd9HSOzISpTGpv8ZYyp16EEHHVF4gWmtLCK41kD6P79c
	WDSTkHO5u8tUFl07cWYxOfx/3AvlNpLNeJ0/wGJ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d37d28f-1a711491-86dd-44d9-bed2-6815fd3569df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6b50472d849a8810465e0c7b34d4906494875618f8b4aaf5479bc4c282a9a8d
Date: Sat, 12 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647073284
