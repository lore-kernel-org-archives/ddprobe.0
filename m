Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120AD7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 05:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646370685;
	h=To:Subject:From:Message-Id:Date;
	bh=iXBhB6JNyFxmkxKXJbahZPwUBhQau+DdKHVsgouSqZA=;
	b=hjOpONK/r4gWh71RXt/EICRz53qEW5Jm4lEIX1EdKNZqPBoA0RUeVsGnQrY3ZXR3
	MZf5rFwyQivtdj4cjdTVSHH3QQhF7iLpEJjFZNzjcWwhgEyHj5gtwcPPailCGAhgs2Q
	LkXduEMKKSG+DfaNz8quUH4GHIl9Zu1GwV3JxZhg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646370685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iXBhB6JNyFxmkxKXJbahZPwUBhQau+DdKHVsgouSqZA=;
	b=bXdWEnr8xHs+PjaAmuUwNv+GFk52XbW+pdc7+CBGKFc3Woxw/b2xtVgAPEmtJInh
	SN7f2iTz6qhxIyBiApNKGmju2jvqfF9KYBPgXlE7Oo56UYsHTElxQSCOxVPD49qsW8G
	2M+flcK7yIvBq2p+bbozb/kncNhQZB+bO1sXShYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5356ff4a-f7780dd9-c384-42b8-90d2-eebd713ab079-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff84e524df78a103cf1e4ec557501a98c7aaeed4662cde29f0a3c708b9bd1894
Date: Fri, 4 Mar 2022 05:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646370684
