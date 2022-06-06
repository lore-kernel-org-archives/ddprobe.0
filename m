Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A017E
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 19:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654542119;
	h=To:Subject:From:Message-Id:Date;
	bh=pMrPGOTAUKWgZJngJ/ulIeup9vRZQXvywzNGDohZI2w=;
	b=FyQnMXz2PQ76zdEsOqGQBe9QpNvXAwATf40ZfpnZY8+CFksixYhFE2gAciz4hW+H
	ncot7P7YSq5s0NwOE6TzLG64SEQ5KfFHb9RCuVwpPnJJjaZf4DHneHgifkVOPtEkgS2
	jzJ0ryGoOVbtEDGXgILcRy5eQSH2AyKfDA5q9dXo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654542119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pMrPGOTAUKWgZJngJ/ulIeup9vRZQXvywzNGDohZI2w=;
	b=fIL/QbadV715imzS2zRLu3O36YRgp/WupuXZrowZI9LbRHDJ5hbGIru+rSSbTWtr
	h2uCziMEVRoeOcFpWxAosXGb+WsVBimQRgY1xNrMUnyX3WjrzL/SMSLJOWkJhy9NPkC
	Q6ZjxT3OFweQfM6Bbx5hM479ZWuBQjrtEAn9fQkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813a65314b-c334d407-9ca7-4b1f-a306-e5b31c39a3fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af7e2cdf1eb92fa4f8ed84f220a817abe8a847d00e495ef3b5f74fc22fc5a32b
Date: Mon, 6 Jun 2022 19:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654542119
