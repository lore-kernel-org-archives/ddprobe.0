Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C6215A2
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 03:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654573679;
	h=To:Subject:From:Message-Id:Date;
	bh=R57+3mfiwH2Ip6IUSgeqqM5X0TF2tAwhivW4liJzWRE=;
	b=D0M9MFR51h7Ux/UwWJ+ecH6ndq+u27lbWnp/iSXwbJZNHql0AFizShs61wNHtB3E
	7+ywYKKTFGXoEoJiL8fTAdjUv1poPE/GDEITHmkK7Z4A8+0wR4JbyGAEKfQbRqJkwii
	Wn5dw+AQ5KIPYHFDLjkJbH336XnmnddXbJZj+MdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654573679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R57+3mfiwH2Ip6IUSgeqqM5X0TF2tAwhivW4liJzWRE=;
	b=ObrBmjDAMkjtfSIv24LvtiBezYFpk8iUyZwARYqRUxm/QRlF/8kKKtLDpF8W9cbx
	UPo0hJdBb0aGS0vwDezE8zhj3n/Y4UW6ZGC0+U/kXjn0VNvtwIt8GgBd/xQ7bgrujzV
	C5DErK0xjUXa8l4+GJ5qClCjSJ5XwI1OzozOwEXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813c46c2cf-7dd411e9-8ecb-477a-ab4b-9dc24584e503-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c986c1e9a614c94f5bdaec7dccc1e2959e2824bb053b33ac0a6c69f9e43e531
Date: Tue, 7 Jun 2022 03:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654573679
