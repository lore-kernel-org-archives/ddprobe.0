Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADA7D33D5
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647008484;
	h=To:Subject:From:Message-Id:Date;
	bh=6gvwbnyH19zNw3pQPFfZ/qm/48TU5xqxHpEfct7TvrY=;
	b=AiOj8mQAUvWnRW9/7eJnoLIYTkoZo1w9cVc8fwyo09bxiSBUUA1EXYXwG256/LWt
	6sT0JqJf5MOvYxGoa/B5dWVE2OUKyStiZnIl6/OpCyrjK0vxEQ/vHPVfKokaN5V8Bkb
	yI3FtgC8UdlF0ziCptW/9aIsn9hqDMt+/R8exQmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647008484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6gvwbnyH19zNw3pQPFfZ/qm/48TU5xqxHpEfct7TvrY=;
	b=i1aXev+Hp8EZywaZigpTq3rcV4+gVWxIOX2yOymXzkuKgcsLtLVjDw8HbXCQkHl4
	rGawVyY8b9Lq2NAeMXUhduoibTujyVxLo39C4iaosy4m2lFfk/7PVgpIV0eG8R9UC50
	pQ0rVkjcKGIJRb97lr6v+lkGgkIoZFdoaGRmF9hE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f795b0d84-c6405bf9-58da-47b3-a0dc-0b073e72e8db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ec3ea2b27bbec5032a96512f32fb5ba512fddfdb04233d28cf632e4e7a26fb5
Date: Fri, 11 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647008484
