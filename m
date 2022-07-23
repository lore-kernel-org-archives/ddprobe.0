Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3E47E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658599612;
	h=To:Subject:From:Message-Id:Date;
	bh=ySlALl9qCyqAIjH++JlxOa1wpjYiteaeAuMnmpy3eUY=;
	b=asG1B+DJBBmRQ3R5I/JaLq2DKEoskDl3o0ET9WCCZZAgMZ0W6mYINgePNiVpzeHI
	K4hxtVv2+8ykPdXQLhtupnFRbC+FUAIQ6vsI0yYnO9AeN4kqy8oApbMC+zXvw7Xnafd
	AqOgVKiakSd+2ptBAaW9nd8oS4ALD1jfMHaa6RMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658599612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ySlALl9qCyqAIjH++JlxOa1wpjYiteaeAuMnmpy3eUY=;
	b=O6IPD2lSZ/7acfUd8QbstXZhQ4eaAhuvkfkbvYEOhMm9AgIqia5cv21B66KwP6Ty
	KBxmhPSY/ZopT6dDon28xK778BaQfeEgKB/Ni7yguvZvDqq6L20sTo6nr1uAG+XvIUb
	kWbii1pIaYyUzR59PDVr9DpMrBAT2r/VhUHSU9Rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c3d9fb4-2b8b493e-cac7-4cbe-980e-e4c71b6b6594-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a45476317801b35b93e4b2359313b80addd7a6783928124b22764fdc14159ca
Date: Sat, 23 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658599612
