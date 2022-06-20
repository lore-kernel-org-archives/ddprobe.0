Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3FB580E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 20:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655757840;
	h=To:Subject:From:Message-Id:Date;
	bh=unXfBWkIWEudvFwsZYF6Ed5cQpKKz8VoLzmS8uY5NE0=;
	b=e3OsSV7QHbAOfjJND0aIrbWQUwGf7Oe3OIDqF40gX9+pN8lro7vVWNBjuGg4bCRB
	6C84p23uqS1C2vo/c6+LxbYQR7HeeXDrvhXdeb7oFq/tgjAgH3PQDRXEepBmYcmucZA
	KfdDluuXrlelHV44McRePm1bQqmOhFbtzalYHITs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655757840;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=unXfBWkIWEudvFwsZYF6Ed5cQpKKz8VoLzmS8uY5NE0=;
	b=NeRA+7RJxrFHTBebLexUrVChrJmqyDRaA8bV7rpKKJriJtnmE7d6NoeBYnJJB+6o
	WM1T4Z9QWiK/zNkKRZF7/0nnEa+b2z+0ALVoUbWh7zidz+6fBEptIyFns4ldVczlFbw
	WBXPaFXztWZPYSmH7wgIjP0QTzE/crI9LgbqSSPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182db9b8a-4cfa534e-756a-4d02-be1e-7ae62802e78a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cdeefc7a3d860d1f4b427e861ab6f3d99c3c41f1990853c1b5589a32ebbbc1d
Date: Mon, 20 Jun 2022 20:44:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655757839
