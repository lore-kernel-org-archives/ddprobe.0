Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463787B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661110252;
	h=To:Subject:From:Message-Id:Date;
	bh=OWM/5rrO9HQoBfwkxTyeexBRGftC0oEmBZP6Em6bWBY=;
	b=NcOl/xDg4rQr1yhYUD78vm/n9ifETcLcHWwfXOrkpoogjrZjF0kvW5o+FzKYZx+d
	nNtFj4wTi5gXu7ODoBKqIrMnOKZnDRQcwp7jL0LhYaxBAIWZFxEyiKRLtixnzzgkA1T
	pFf+Epe8K+2v+SwQpR0DTFjcnpLqoTIx0jnTtsrI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661110252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OWM/5rrO9HQoBfwkxTyeexBRGftC0oEmBZP6Em6bWBY=;
	b=I1WeyEqCM3W9rIhdR7BGyv/QBZ2eB3UIN6xuMhiBj7RlLqEymQwfv5U2YCbHKQvP
	aZslM1I5MzMCJmvHQYpALpYx6sEDVQpjctmScar7/kaD3EChFy1EdV3gw860woQ0r6p
	gol6abQ9YoOsiaHHrXKAV+qKII60Wo9kPKoGCrpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c1e2f43a-20e58e58-4478-418d-a9fc-233b246a9d35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5600f7ad3376290595a098a3baa796fb31be85324fb1d6bb4d115c167a958ee
Date: Sun, 21 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661110252
