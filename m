Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 810931855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647255384;
	h=To:Subject:From:Message-Id:Date;
	bh=SgYRjigSKomssJzur8X/XqUZduWyb8bbhQWcvRKDxjA=;
	b=XDF5K3LpYIlxuEgopE1fQJxneMr1dOzzOVvuYNqR31LEPiat97UJWumBuyv+8TbX
	XaYk7/1eM0SRakwPImOTi5mBNgy0/Tl3tQQnmLtBaXfcG6BcWCJbnY4DCYCmpqaN4tK
	WL2+f6LLEKOp8iyaXC+V4gMtzAqZuo2v87RN1yTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647255384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SgYRjigSKomssJzur8X/XqUZduWyb8bbhQWcvRKDxjA=;
	b=KEg59tbT+Sf5lRH608q7tP5KRo5W+ZupFCKGvE6HwDqOwUI5orwpPHKoiyy5J9rR
	1IKqsWzrTEU4+WxSqGUOtzapY4YrF3G9RYPy46kLITh1lujVJ+kHy3nK4l7GWE2UK3q
	XKgtGuer9bNGYFOpzcX56jUUwrvbFyvV8j5apDbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f881272bb-1ff022e4-1604-4baa-9dc9-92fa08d1bd37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5630d973db4b13840af4596c5848657fbc2fe41700b6699715fa8cec36434f1a
Date: Mon, 14 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647255384
