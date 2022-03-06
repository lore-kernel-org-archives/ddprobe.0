Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C867C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 06:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646549784;
	h=To:Subject:From:Message-Id:Date;
	bh=eL/iKIhtSgrhsNeSjG7XrUzS9CImNpyg1y9DvKpQTHk=;
	b=WUmmUjwOy7KJ4p8PVxs5SljYuS49FTFtKGtJ0yjHrV5NtsrHqCY9E/YMYP1klwPF
	4lhgcBOBJugFjWoPjRvTsTqJxVYS1ZMblfVrll0MUpH6ICm4l4jsJSzm1GxphjnGWjG
	sdCIn/sMHxNpkkf+iJvjqUfZE4//xxyBa1A7By6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646549784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eL/iKIhtSgrhsNeSjG7XrUzS9CImNpyg1y9DvKpQTHk=;
	b=CjK9d+FYLU/7OAEHOKD6YdcxbMQOLg8cdy8lAn1N7ukbQu8riAAH2fAG16bOdVnr
	gvhGOYOiVGK3FCgJg3hIla0pvc5O1m06KWrQuN74ZPJKOWEGFYkiOqcknabReOfqvai
	v5pEPwQnUWXZk2f5uKtx5rF81DiW1+U2tqehgdts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e03d8d1-dc49ca71-3643-4472-9e68-701f3ac33f5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14c347157a0cc5389b5cc53f873983241bccb206b43d5180a1a7919f7b986d59
Date: Sun, 6 Mar 2022 06:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646549784
