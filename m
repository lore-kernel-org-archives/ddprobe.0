Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0053323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645966585;
	h=To:Subject:From:Message-Id:Date;
	bh=p8yOE7BDJqazcHhZn80hM+oZY5Pbwe0ZcJyZfAmB+q4=;
	b=Pn8UhLP+yF4HWqkE38/wWeiDPJYYzRPDL7ILnTKvMGak+Mu9XYwXKuTVshkbMFn0
	ZKCeTARgxv72j9w966wdphZbIh7gPU9HdnvH3ciclIA0EqGbkjt3WdRwHriQ3fikT2J
	T8kvlqlQVNLs5VCPQUWa2pG1+jnIeWvkA2pTj1Os=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645966585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8yOE7BDJqazcHhZn80hM+oZY5Pbwe0ZcJyZfAmB+q4=;
	b=h8UJm/fcLXYng+9nQPf7M3KtoUfbBmn1a2lgdQaQHmlHWvEZU7wTkorNOPVvBY9i
	QJJJelBLOaeZzK34DEIMb8bnKHghTJ4vFMOBm4yN4W+Xz02z1hnSHm8HPonbJRC2qkq
	4g27gEJnCV/BUChEKWO4sphYi+Id4mVwmoS+IW2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b40ebfc-eee53f4e-19c2-4bf9-b464-75e72d2c6922-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3036ae7b54a72dbf973d9fe277e22a61f17381e0dad398edd80d3afe7a8c50e7
Date: Sun, 27 Feb 2022 12:56:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645966584
