Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5C7A2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647203185;
	h=To:Subject:From:Message-Id:Date;
	bh=ASPZGkq2SsSc6b22v7Ik/1wVuCHcT3yMFP7otJ9VcsY=;
	b=C9Zzs5HKraVELME98MLaAs4SJHe5lrQ1xg6+Qn3onHrpX0AZ5HXsjtr84YAGZ7pa
	XTi18smws2lbGAGgjB/65nHL+XnLuiPbNKklLNFp1o054NSmjf2DVh7XRAZfaX+A6a1
	VIpOLNI3defgBZ+Sa2tZjyowpU4OLlVyuKdTNPxc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647203185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ASPZGkq2SsSc6b22v7Ik/1wVuCHcT3yMFP7otJ9VcsY=;
	b=TwFUTcV+KgFAqZ8kgMOtvvn6KaUY/IzEJZUK+4uda8ljUN6e963ap7sPj72NlRiY
	Gq0ugbwrbQVVlwLbLHh4dpr2wX3Q/P/HwuTOPVeN2i7I5ptALor/jjVY14m7sSF+cfe
	IXfiI/ZIO2mdt9CXe5OHlFdjtjEPsMVh4TGtdQfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84f5f0b1-cce18312-4c20-4dbf-b668-5020a1646c36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 919741663c0fb10c635db89a7038a1508a28055954c6446a1b76147b43896e04
Date: Sun, 13 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647203184
