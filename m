Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0809C642
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 00:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644797462;
	h=To:Subject:From:Message-Id:Date;
	bh=TXZ3XiuSonj9NeoSni1r1x1NVkK7jTmkOtK1oFrWXzI=;
	b=atdRw1AGqBkpJhUqfKlbUnJPCmKZ3zuwSa/zldHzXSuveFyNtZuWJO6ky+LFN/l3
	JT976ijmap0/qg0gD8rPE46ow4xqEE23HKLVhiVfwgn0pNl2wMJPCQhtNpYZWPgH+dv
	uFnKm9EqrypdyZQNw7U91OwmFyLkz0PXUocY83pU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644797462;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TXZ3XiuSonj9NeoSni1r1x1NVkK7jTmkOtK1oFrWXzI=;
	b=eeKKv+z9DD8AxttsHrm3QbsAN72XZPGpQJQ9Uz5HpvMUggoYofmPmH2JmUdDH6y4
	uAE6dlzEmQkqXuPIC+Go4LkOjhmsB2yKJVdzbnnjIdDCCZ6OOJFKxThkjRjBeSF/fIu
	zJvdorZKUZRpWBCd5mz9m8jjMdeC1C4Wvcthdwt4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef59186f2-d768bcc7-ffaf-4a82-94ed-abf1ada56fc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4284b69a925a47cdc61460301f6a895fe922bafa1e392a955d655d27a3b4631
Date: Mon, 14 Feb 2022 00:11:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644797461
