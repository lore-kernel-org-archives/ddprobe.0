Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5FC362
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 14:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659623453;
	h=To:Subject:From:Message-Id:Date;
	bh=T35BTbnE1/T/25X6T4SvjFQkGXcyXq8Jy7ddx4ujp6o=;
	b=J7zWyq0P3nqQAWZH4/dLWi7MgzFaMfyDwEEJdvd7Ay8UCbEfboVTaxSBwYK0PAki
	x2S0AcYffQ0i5HPkEc6icRyFMYumHRJwKti0K9GEk1bPgbFtHUdEmHeUNqxqdUghZzS
	3D9NxPhV93o5hMKyBld3UyxWgXrK/688T4Ny+GKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659623453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T35BTbnE1/T/25X6T4SvjFQkGXcyXq8Jy7ddx4ujp6o=;
	b=EAlS316tCGRSmgxNooGA3R6hWx7vPKCuw948VMqaRY3KKgBUTy3gjHzeFPmF7R8S
	Mrzrhl1iBjUyLDrVpP6Q+JYBIPMJGKeRdwPaC0LyNuZEOcJW7j8JAp4KSeKSDNXSKky
	yFr6mHNXYMVM/6PNihFhSrT7d7xy3pN9BRsNsoNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018269442fe4-e738671e-a823-4b00-8a70-8e80a7f0461b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 422cb8d1d7abe731bdbf3b8cf411161cdc284fb9589d4633cb6ee4a5742ecb70
Date: Thu, 4 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659623452
