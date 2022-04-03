Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BED07C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 19:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649014498;
	h=To:Subject:From:Message-Id:Date;
	bh=Z3usInZCTZcJX2YpCXEw2dusxbRhdmujKwC0vS/z4vs=;
	b=UI2O7cDZ/wtWaiY7s1XDG7Cy+z38oWgCfQl7bBQfXjqr8EZk4efUDejnBKMgw46S
	TrlZAo3fymtfQO0KauEeHO0yBVfCi65nlzKvOnx9mTbIMCL+KZu6qQLuCzsRe337T2q
	tC1DUUGw8FPdbGCMjga6a8f1O92+KtSwShbh4xdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649014498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z3usInZCTZcJX2YpCXEw2dusxbRhdmujKwC0vS/z4vs=;
	b=RPthj8ffnyU2JSZhmu5Tl7HAxYW5VaYNaS8MI0sMAVUNF+v7oiatQGl5oC3jkZct
	PVaK9r9p+dyaKHhvCzM2eC3Sm7su6YFv6IuOYeQA+Fc/HRA6LlrUuL+F31jovb6fiSh
	Co3DueplTR6+UUxVr01ya1hc1qjXZ1CMwR5Hnqu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff0ec6407-52652356-a757-4603-b92c-576d416ed2a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09ca0bca33c9cecdbf067c5de818b783a835bd736f8369060354530417530c0f
Date: Sun, 3 Apr 2022 19:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649014498
