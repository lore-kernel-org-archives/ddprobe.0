Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28551814
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 13:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654175639;
	h=To:Subject:From:Message-Id:Date;
	bh=2lil1WNkGy2dDzpQbv+NkbW7AEgarqgJM2Rgt1AYEjU=;
	b=D2P9985aTmyaI9TazkHmkkA/RLGUC+haM3fpyJxCteqqU/pvcnYv7Mw/FyEf7Vi/
	y69yV1uXr4VIqYtJ/0buJnafAjePI0nWqIT2zrXa2xiDcMtsK5OOsau40qijxS4opfc
	qCt0HTMm0EYxnN71ujzGuB2s1M+EiXHybsi9efbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654175639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2lil1WNkGy2dDzpQbv+NkbW7AEgarqgJM2Rgt1AYEjU=;
	b=B/ZZ74QOD6TaEyO2C0NWhPFaa4TGJ/v4GliHgt4xcmXjJ7JHgTKSwY4+ks7yLp6p
	94kJq4yj+iyn1S2BratVsI6O/XhZoZyOgvE8TffXagEjRbsyNrh3zZI0BE3AUAydf/h
	TTGOA+89kjKururZrcAXtkFgouBKH3sERLwAWA6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181248d26bf-ae5fe0bc-c578-4e24-9472-e05d951b0329-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2de5002a62e76c0a4557d664a6cf5431e9eaf03b3b58f7816fd79982d7280f4
Date: Thu, 2 Jun 2022 13:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654175639
