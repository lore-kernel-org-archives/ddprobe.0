Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636757F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659393652;
	h=To:Subject:From:Message-Id:Date;
	bh=VAQyAyxjmwO1qk7/x3C2s9eVmObzibMS8qhzFDoyrec=;
	b=jFw1RptpsY4y7Al9kSljFO6Z4xF7or/aaPa1OT/ejdINf+D09aCBeKqWXEIS/oyn
	NBwQR2FOvqmH0mCeENNeJEJaD4UF2HXNQ/H2iHtdydhklHk60U9l2uyNZI//fUJxwJE
	j8rq4KSivvtK3pyGS3bhfF52/JIUP3zPM95CDQXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659393652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VAQyAyxjmwO1qk7/x3C2s9eVmObzibMS8qhzFDoyrec=;
	b=WVqgZ29u8X6s7IZuBNfxQpAnGAv4lQYfd373+yHKeuidlDsDFd31ORHs6RVVUI4L
	ACpEqt6j1ZahRJKHC40n+9dcSa3fBsfSKfnkQVqEUPaUe0XBIzOKj/Gq118HILoyoLp
	luk9SrIfJPqXdav3dM3s68h3RElPuk+f4bsPqwzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825b91b780-9f7ceb38-e202-4b4a-84c8-eab9ace9210b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8261b4b07871dc576a49148f66c97f729e706a8653105a47e55908b8857d09ed
Date: Mon, 1 Aug 2022 22:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659393652
