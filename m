Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D9C20E7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660188652;
	h=To:Subject:From:Message-Id:Date;
	bh=aTkEinA4iRT1JHaoXCAzaGGl/Vbd9SU5/ASqY0O6wjk=;
	b=dYkQFrcOtEwsQaetHb0SLcHl0LD7X6zMlhIO8biYYyrU5JmMbiYcP4VLnEHJkn85
	yV+qnpFPjAT0Ex5dHBAYWZQQy4WT6V+uETCm7hzI/monNPYlAm8wLVUDrPdQo7mLHSi
	PSyn6FGY4JBLKcDIYaN7Q9YSxE1GwalbajFT1qmE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660188652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aTkEinA4iRT1JHaoXCAzaGGl/Vbd9SU5/ASqY0O6wjk=;
	b=bmd8pziFIVnuXvm3CujQBtqTVpxwkKtpBie4zm2aedaxzIWGB2gS+a4NCt5sj4KU
	qGr1yMFoNRe0aWdLLMkU7jOBfLHxdwkx6pKzgBb9f/oIvdtOuF2ilXGGTbedouJyA7i
	Ljh4GGWmSEHhYNgi3eIPtcHZsGwfOWYpi7mUj62E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828af4742f-a9059a16-ae46-45fd-a370-f4ea03ede3df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c84ac58aff2c9ab189867269eee5a24f30d4802edd01ad548dd9f442bca67b00
Date: Thu, 11 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660188652
