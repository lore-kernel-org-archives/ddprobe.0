Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812F51B76
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646496984;
	h=To:Subject:From:Message-Id:Date;
	bh=UMIV8bQgnnCS5CUrOjVMhfyXi2rmTW4gg1Rdtq/dtKw=;
	b=ReBbFbKNS3GIuRMCuBbUi9ct/Kq+Q9z70I/YKS+b2Ijvu/e58vmkwMNXfBVz3g14
	Y761gq8WkbRhk8b0rJ6DFHpFP3I+NQDWsHdJGV4XRdOVVy20c5U93PUL1WmsJxE6h8q
	QKgj3idVFuIVvuNryYcdzJfoZo0SEPK8WOlNVZb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646496984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UMIV8bQgnnCS5CUrOjVMhfyXi2rmTW4gg1Rdtq/dtKw=;
	b=MusTrQN4V426P4UMCbP1eaaOJ7wKyhaqx25USWiINeDTh1rvc46rJ9QXHoYprefD
	XcAMd6CN+Bx/aVFfoNjqeBYkSMLbNxiLScxnFO+bhIwHsMzGayxFyj+q5iGiZ5kpF9t
	s1DLN8aFdrdGJmTY2ulyGccx1N7GizSmajo77FKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ade2ea1-18adafc6-8a10-4797-b266-da457a501d30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8c6b0908fe267da9ce54174fe586b95ccb3c8b9eba9b984411dd130e0cbe87bc
Date: Sat, 5 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646496984
