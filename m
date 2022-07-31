Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83D128F6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659271853;
	h=To:Subject:From:Message-Id:Date;
	bh=4vNBN9sXf7xndWo6mkQMpsFBTOgG/j6gKG8FzDeQTEs=;
	b=Qxl6KkO9K26uEz0wQhCdpm6DSRkUbbNdxoGBsEouDGbZMD6LiBuowl4y+cFcResJ
	AwwG93AvlRQB2jJa6WyDtnrnVuVRmB0393glh424munM1S+7LGQwfKqn+WIBySi3rPN
	soSopW+51oAuO4sxsCnpBIrICJ6rqhZ17zcBvwlA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659271853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4vNBN9sXf7xndWo6mkQMpsFBTOgG/j6gKG8FzDeQTEs=;
	b=kvbTZOkE3Dr9005UxoU/+rSFIkO34y0L2rdOBrG9m9KazRc108Cq/T/Hy/cMGBOu
	rrPmyv7fRZLgQsjfudN6mGkMw48miqCw7Ht3+6x7lBEVbN7hVd38Vsq+bl7iyi/vQdw
	Hgi0vk+Fj4MQbiJJ/CK6zPWPtMJRHIz0+lVkI1Do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182544f3222-e0b71bc4-3f6d-48e9-87e1-59b1713e5775-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d65128d1df7100a63da0ebd69fff268122638608215c846de81a6f210351e87
Date: Sun, 31 Jul 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659271852
