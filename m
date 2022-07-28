Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6141C7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659052252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ta7uIDi9tG+jtWt3h4+K3S5SqNUSf1Z3e2UpqRFHHIw=;
	b=OOLq6VKnl7lTqXqdAiN0rtfqxsbnPfAJxXVzACV1QZ8XUE3b5nWlxAvlAk2Km0Gw
	j6cvE8aDx9UJmFX9IU7zI+6jOsP3Jg3bqy60veHddV7JbDFwOGtwTFz/SBRyyS2sOw5
	AJWV6JwTThPcbpMb6dG6CtcIoPFZFXqbdiYfLVss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659052252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ta7uIDi9tG+jtWt3h4+K3S5SqNUSf1Z3e2UpqRFHHIw=;
	b=PbWWfN+69UTZW9WItuxTLPVrZSTZpagAgvUpHmgaIjcc2UTWKsS5b3oaf+rdjFT/
	mJg1uv1N9CaCtHuJM739ZjQpiLNjmXN5APmqoBqK/S14hUfrMVHWIHWp+ejJl61uZS+
	sxY+Wcgm/SlgzOA1LBwSBKLSo/vVW+YyB3pUuimc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247385d9d-3c24b9f5-7322-4336-be44-cb98532acb2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4408996df193f51201afd9dfc3a2a99751063c3bd61bccffb91a6804f20871c1
Date: Thu, 28 Jul 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659052252
