Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1C162D
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658738812;
	h=To:Subject:From:Message-Id:Date;
	bh=cUEhwywuNiKkQKUDxL5IlC48ctr+GyfgnTsYbIRR6B4=;
	b=E8jioojGEu8e4PMT/6BANiYp5PYWJHLOSwNZYNT55XYkGZi5xA+gJz6OcoeOfVVd
	U9IH8mgtABrnZk/K3vbNvsmunFiNqaPYulaxXAYjC1m1rOmbHFS8ZltZaWHduFpWN69
	Kgv+RhLs8EbW41lyrosRdvzZ6mCVZWWj6SuQ9EQk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658738812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cUEhwywuNiKkQKUDxL5IlC48ctr+GyfgnTsYbIRR6B4=;
	b=EhpBcpAKnkt4iRe9+o2NWHWXx4jnIvBz5oT9YP0RAcBcW7Hp5iI6qDLQ3/brCVBD
	5gkJCcTzSH/h3v07G0TZqB0JUMBxtSgQttb6OlWuenCBIMRo3cDctf6QlKDlzWuRSej
	lrl+gulXQGKyEbQaMDtfvCpVP/pm+R0n2k4LS/0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823489a60d-ac6bda53-f492-4f06-977f-f224c558e6b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4dfca80e9556bfb301f04cdbec4a2d81546f152f259af451d209ff04f49b7254
Date: Mon, 25 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658738812
