Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404F529A5
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 22:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649371738;
	h=To:Subject:From:Message-Id:Date;
	bh=M5/uuWCTyFurhI4oRw1XSwWKjQl9vmpghRsN1lbY2Wo=;
	b=b/hmr9wgH/Vx/LKD7lA2mD2fpDLS6o4zO3i9sFJViJKI8D/HMWog1+IDDzs0akzc
	Qmb4QaCo7+CmLm1HoHkUprl6dVFxVz3KItUuGsWGGTaTodUJDjvyMsNxV572Uv8QFBI
	k9kxa4QeEwW2SsnkTkpRg+q1cvNp8zh72Tpxsnfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649371738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M5/uuWCTyFurhI4oRw1XSwWKjQl9vmpghRsN1lbY2Wo=;
	b=cIMRgonKj/HSV73FsibO7Jk+x/NrzeDWvxxW1XVJQjtqpUhZ+Z52s12Lj3ENlGn/
	/yS4K2RhDghJuqotrEBMkjkITDm8YT1MO9VkZNPCV1bVz6iyXz8uXCgIu1+wCSTlYeM
	n+0b48k61RaeDdWOrtIktK9CGl1uHnwTN6z1LpT8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018006377113-11985c4c-7667-4a79-bbf8-9cd28947dc6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90d11ce44f02d541b54a9232e288c9de53e066acdc4d8bfa0200fca990aefe65
Date: Thu, 7 Apr 2022 22:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649371738
