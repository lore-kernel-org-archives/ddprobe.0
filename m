Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3893E3C29
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660652452;
	h=To:Subject:From:Message-Id:Date;
	bh=giCC3voPIn2dgYHPyPGKoQ8MeSYJipbnnTc5jV+bck4=;
	b=HBPpDRHZY8gpgpqIGuUT3Dqyzu7Ney2ys1l9LDEFrHZ4QOVIQ91m1FaYwo5mhLk+
	0DmGHFwLK1qvsnnzYFe1OltNlvlI+rB1NZGr4IxL1l8m8MVnLqgrvz1hN1FxiXILpF0
	wkOOE0bj5Q5B2OOCEf5fb8cvAQIxDRb+6BGx4ew8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660652452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=giCC3voPIn2dgYHPyPGKoQ8MeSYJipbnnTc5jV+bck4=;
	b=hOFy37wp1HPc8HnxPEws6QRMyz0r0VycvnHnTa/iwanN2YKeWlnIG/pEKX9gaQMk
	ZWBFzo48L3EUslPSH5j28RCi8TltHXj+HioK5gxYmqo9VUXnidq2GI4jJInNhL+KoTV
	Z7SenjGlaHAEmC0/k2y/u03uei1QNu6BlZ6YDpLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a6997ac7-8a2fac47-791b-4d78-aa9f-f48f255140ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e993d93e66f7f827831e713ab0e7b8c84eaa696db67ca7ee5fb1ca6ede40d35b
Date: Tue, 16 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660652452
