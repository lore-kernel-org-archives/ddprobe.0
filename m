Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51962102
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 17:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647018384;
	h=To:Subject:From:Message-Id:Date;
	bh=dFpLKsUHa/UsQdhoPaJaYr0qFWEEWNyzAsqnFEQztpY=;
	b=JGyNGJHCOiUE0N39X/tYcLCZt0Tm02lmYL4I+t50y1InGQANF5onoLgoeQgMz/S3
	ClLr09cqCNLrsiHHwZteaJJD1vgQNS/ZqCh0osxoIV7OfZ1h2st3Yfe1ZFClR7+p/Xo
	aL1MrwG19siTzAEnC4Exa3bnwP5L2J5Fkgcch6po=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647018384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dFpLKsUHa/UsQdhoPaJaYr0qFWEEWNyzAsqnFEQztpY=;
	b=LBhil3vL6ZS41+39Y/H0MHYpgFsQEkNlFI9uEFqB4cMms57gTTvKuGUZLmsrPu8u
	hxZH3+doYV+m6pNjLVMT+3Op/hUnh/sL9YMj4sBhbKEFYhUtTQjdw3puP63chtgUOU5
	wPx9OAxZuOK0IsPBx1qAF5i1XILq9qC9W7w1cmKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79f21d76-6ea010c5-b551-42ca-bb8f-e9ebabc18c32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 820930c2c2d065c65917fb1835b42eb42adecb119161b9fa76b1ab1e3a6f4959
Date: Fri, 11 Mar 2022 17:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647018384
