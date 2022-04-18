Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259D37A
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 16:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650299098;
	h=To:Subject:From:Message-Id:Date;
	bh=cz2K3prdZA+B+38YXd4IlBINRQQqYwM7pQBJ0PvSjsQ=;
	b=jVIHreD/mR3Hh2EK6mPqyuPA9IskWV+GzRpjiGYRbmNhK7dExegNBUObuw7mH8xF
	DDu5UAL24G2PYq7l/V/qKhD9oXq+wpPT07noA3cBMfpBdxzZCyJi9SI8igz+e9clyUq
	TX+5UdmUBWLpvCI3jNcKWZXZd3cQyJbyZLDDW3s4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650299098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cz2K3prdZA+B+38YXd4IlBINRQQqYwM7pQBJ0PvSjsQ=;
	b=baRj52E++R8a6atUGvAQ0LP1O9m09f+HutaaVsO7yIWSGx3KEZd3/wnbPW+UxgYa
	SWZThOHg/+5Ye5ossYnKwVb0jeY3ndkIs9vZnvCboPt9K/xCXt0rK8iDaCsUEMDivXw
	zqQHMME6SgR019IuPwbt2hPt6MoVP2K4T+43LlgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803d7dd486-249f6813-6572-4406-9017-45c172399146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f3beabecd75a324ce394f1943865527227b6bca41c3e8c2954c1a7a40f69eac
Date: Mon, 18 Apr 2022 16:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650299098
