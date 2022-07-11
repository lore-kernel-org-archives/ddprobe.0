Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C776AA3
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657583212;
	h=To:Subject:From:Message-Id:Date;
	bh=kAK6NnW3uytAHwzdPhxnYuN1wMascREmGBT0irrdo2o=;
	b=Yogg6oNhhg+BQKqh1/yn0wrRcNoabC8NBfJZWM8/Z/ueU6qJl+AkObQFoH0RDJmD
	BzM3DHMbQBVfexCzoEzbEnyLCFzTwtfIAwYDF8uBB031mVlDiLW4U8W9l3onckFIpST
	DrYq8GFCr3fL3t1fnkrHqgIDh6DtjUCrOO+z+ID0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657583212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kAK6NnW3uytAHwzdPhxnYuN1wMascREmGBT0irrdo2o=;
	b=j9fo/V1yex5woOVVmVhPP4SzHEVYZ7aI9IPH8GWohgA5wdxVWBTgilHkFyX/TKg6
	xJDw+NZVrXZt2uRiBTW+DlT7H3iMn+qdl9cUTgyrF3ninZjIrmQfa8bDvbwn9zQoxOs
	UdU8nN7bO7T8RUgimmjv+BVIb7yimd3/P8tMMmTo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181efa89728-2a261e23-147d-423a-9c63-e13555ef203c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa694da7c13b615d76680f63dac6c3d7b961cd4459136f4d735124d6458dd51c
Date: Mon, 11 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657583212
