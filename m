Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209666001
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657042012;
	h=To:Subject:From:Message-Id:Date;
	bh=8YhFyU2FiNRpzCqmVMNs9K+4QgkcuNjFRiOax4j38UM=;
	b=QGs7hhFaYPz0YD8aHYUiwLQjjelS3sOB+85ZLNX1drQP5aSmfA5/hUU14Nu6OgZs
	9LQhsCG6nwmyLLDIbuC/9aeuLDWUh1td/01mCqjLQWja4Za6aG/jHG1LRJLSHG24CVQ
	X+UbZbB5hCKMJR+OxZN/F3NcyT1kNfOj4Gw0S+1U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657042012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8YhFyU2FiNRpzCqmVMNs9K+4QgkcuNjFRiOax4j38UM=;
	b=WU4su71OF3LFYYWxIhVdaxdr6uPqxptniMEhyys5jclhvHgWHu/YlQy2Tvp10QJw
	/TjFvCMXAu9auablgCeNz2n/iEIu/WxLWHTsJWzFA/tP1nOlGcEeYGE1lkX7WyWJACL
	ywaORj09pzpoq0Ckn0EwDa/IV0Dk+Cc1RpeFiKU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf668863-525f12c6-26be-4ea9-8148-4c4a0ab7512e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 373932f7172e7f7766ec23b24295f633e46f48833ab5c15a026a8d707d6ec48b
Date: Tue, 5 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657042012
