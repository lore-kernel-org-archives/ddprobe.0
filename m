Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E227B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 09:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651053238;
	h=To:Subject:From:Message-Id:Date;
	bh=LfouYNexbiug6pTwV/vw1xl4UoneMFBsGO77VqXmMN4=;
	b=IyrbJTZUI+Wv2R9EQRS/wj7gTsSYIotoyiDBJz0f5yHKbDysF+SYyR5KdvO3P2o5
	+haCKJ6G4z7551rDxcWYNuXgE0ax/sUB2JPBa04gvL8iA1F4GUz7OtNCFgzzSdS1N1u
	YOftC5w/fcPfeFhtyI8XKwkvKnG6SB4q+/XuzUD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651053238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LfouYNexbiug6pTwV/vw1xl4UoneMFBsGO77VqXmMN4=;
	b=WHun+OmhpTkQS5Q/qUrvDfmBXNGZCVKv/KqxtHGBJE/AEAwAGhO09uExEL07LgCZ
	iThdcX67L8JQrG8Ovp1mmYK2+k3aiIh0pC3Q9F9AxztqEipbza0YFU/2WhuUgM1TFoF
	KHhUjbb+2xGwA0PvIg7v7mTIwOTrZmRJi4yv+WJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806a7117ff-962dfabf-ba84-4377-974d-86a6ecc6a9b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f8b2db8fe6e225845b3496cc74a01dd1f9ee6edaa9d5fab20dbd0f341064e20
Date: Wed, 27 Apr 2022 09:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651053238
