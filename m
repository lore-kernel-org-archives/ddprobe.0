Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1110625
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645508485;
	h=To:Subject:From:Message-Id:Date;
	bh=tPpZnvRfmm1PYld7wqpwNesZ6wjH15+dGRhrN06wir8=;
	b=I5DNTD/pEKCzNbWj0u1wJIL1Ke0IUWruCbIVBEToYw8jAWRk7Bc1CfrH6beY5BUc
	FdpUdI+CU6Pu6bW5Mw0ICJ8qiHwwVEnVHVmYxhdkU6HKnJMj9+Em9PxatxbKrvNAmV/
	KSf+vgqpQIEcYBtkJbSspsx5fLQRsgU1qYyb8taE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645508485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tPpZnvRfmm1PYld7wqpwNesZ6wjH15+dGRhrN06wir8=;
	b=f/KBA70XIo/3g08rBKplbxkUCMXs1gRngLg44pxSKcQ1JdWEuyXPmskwF/lf/jPB
	5Z5x7ScxhR38XDa56jFrXtJP6NC1E0z/4tGJG9N3lAHdnFHNWGNQncy7FQtD+vgK7mN
	8rNQoWhWVJUon5Hs32uyGutsxChQSKFpuvPvEFjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1ff2de9b-d1f332da-67e4-4126-be06-a289025393a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 450c9fe5d28f5388397aca060b35da64626c762e5b019a8d15daa386669d9c6a
Date: Tue, 22 Feb 2022 05:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645508484
