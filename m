Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBD07E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 08:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658563612;
	h=To:Subject:From:Message-Id:Date;
	bh=k2fYJGP5ZxVLGOojPKn2WyZ0mk/ycC2tCatqlxNUoVE=;
	b=kuYVpzgtPLiC9LyfUcUqKD/zWvaYhOoARSgRkl8O1fmuEKNTAPSmaYYxEVcVZJXm
	8PovICNWrzCWERvcCdZfOTf9j4HOxZzFki4TFbze+eDBb/uCt5j8oUP9R2cfIHvsnvP
	Jo8QeowQl7sYD8+nxdTnyxkwEuJZWaqsUgs8orT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658563612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2fYJGP5ZxVLGOojPKn2WyZ0mk/ycC2tCatqlxNUoVE=;
	b=ETlpsdfONAEXjlsn9mIqQFFwcZCINHXV4Bo7cOJQLC8TosJf6qONXHRVAJrF3zMD
	islYGsA7oKYNpTzhCxXHXZAN4doz/31c9CMuFleGNI2zxl/2ScTzT/i3tS8y8sBHn4M
	vfgZI0P3RfvKPV6msiv/xRqw8fzAA/bZ1cfMV1Yg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a184e6a-59cf800e-5d6c-45dc-9bb4-fcd7585bf5e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 30d0a9d51f2d77b75c3d27f6a8f38f8f43f6cb58190bbdd8c3b7ef6517a8bb72
Date: Sat, 23 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658563612
