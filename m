Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57C67B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 02:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655691599;
	h=To:Subject:From:Message-Id:Date;
	bh=8MbAi/YLdYMOK40dPUWtDI9sODNqN954dD8bMhSAMdk=;
	b=Dn5dabW4P5TwFuMCVNvC5RpGtO4rLTMNVQNomED4ED2OazCuTpngcz40MgVnkYPg
	ZNhVAsyvGDx29+p3j9oVUxqZ3m5K6nVhmIaeURbrao2gJ1MZsWx6O+wm6LdwwEEhZHl
	wLxRt6eDSYC/FPN5MEc1Hpg+XeZa5qvfVvDOiiP8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655691599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8MbAi/YLdYMOK40dPUWtDI9sODNqN954dD8bMhSAMdk=;
	b=HPg/6D9RXGNjNRUr41fS2VuO8cIVQuxdHP0HHlypLhL7LclRn3j3cSdyz0SGT8Dw
	PTK3XgyzsqBvER4myL2jjDxA5BWf+2Y8Wx5NfaaiyqbgMHLlL71RRwhUH2aVJx1536S
	2nzGI4JdifEX9w1HELYM+v3yZKitO95lqbje/nU4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ee8dd82-85ff397b-0dfa-4135-acd6-0d17788da68d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35b8ac0e0fe53d285c8460395c2a401b4a8e6b85b1f22f28431656981a79e096
Date: Mon, 20 Jun 2022 02:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655691598
