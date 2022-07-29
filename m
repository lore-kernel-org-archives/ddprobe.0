Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553104A24
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659110452;
	h=To:Subject:From:Message-Id:Date;
	bh=bZB1uPAt8EXtE/iWP/1maS/sMwWayVfBfnWA35UNTjA=;
	b=Aqj4qZrLkSIu2e2DFUfDbsDItcq9sBK+U7u8D3Rwa5KnaLIzWYsZ0xwS2Q8WOQjU
	BFE3z/D6PMEhU3qA/PhIGMoWql6lltNUB1fyBxXysP626zLexGZz5hQIbCmgpLxuQ/h
	38eINH3fdQixWUWIBwEBi13fhNR9I2Aa/pkW2XF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659110452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bZB1uPAt8EXtE/iWP/1maS/sMwWayVfBfnWA35UNTjA=;
	b=OhTv2BCY1322+BGoje7pgMrpcACUuwdIPkAkD5KUKdQIwUGjahECnCm7OlqFOOLc
	ZTEZ41F1EoFdTYdg9wqYG0XqbT9lm3R3LtlJO/N/h7tT+/0Z1PvN8mpm4DKPcg6Sy+v
	3qr7tNRdH4tXC0S+Nm7PD/6QWmre9qlCcMHzcluk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824ab06d27-fb4794af-de78-451e-825d-6d5b6e0b579f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b72b24408aa009e7efd7b1ee111989f8e7deef87628f99a9efc4c08103958bbd
Date: Fri, 29 Jul 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659110452
