Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6322A54
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647948084;
	h=To:Subject:From:Message-Id:Date;
	bh=uZmlNEbcn2l7R/qsb6hLcDrrkWEga37h2Y7jdyA7AdU=;
	b=kVfKuC4FD9lTLoVM3CAZbjw6+u9PyFQoyaFwqPDkkJvG8gx09Jo003nO1oa8c6J3
	61uKMY6qa02OPITCozTl3FNqLbOUQ6lgoygsuN06XHmln98nL7CQhgOUk6dGxtA6Lxf
	otzIRFtgNeDqgbfp7rn8ZKqCemdL/etnwa6i4u7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647948084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uZmlNEbcn2l7R/qsb6hLcDrrkWEga37h2Y7jdyA7AdU=;
	b=UvkHVQwxVWAXw/RmpTFSOUhI9W1XCfc10au1gfoN+GM8L9+I0Gm23jkAhmta4TAc
	nvc67C/ENPpcMlqTDT2AioKCTUbWFw66JSqHzYsvonteDwzO5DKQbOXBB5OHOGHQqao
	lophFZTs9urrPn5NtNAwALpXzR4mxbv7AVMtdqqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb15c3608-e02c29c6-6bb0-40cb-a895-d228596b6a4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 576de990971a2003616a981d5700ebab627aa85f3faa23453809c806c78377bc
Date: Tue, 22 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647948084
