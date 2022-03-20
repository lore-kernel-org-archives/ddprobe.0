Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA2920E0
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647772284;
	h=To:Subject:From:Message-Id:Date;
	bh=Aks+ImAck3h+93RMaB+Lt/2iI4JtAVKOYus5g6r9L64=;
	b=iot8BymH7EEQU2Xxo5UFIxyB25tdqDAXGNArfCK4A4qbQSu4/iUdR5quvM45pw8Z
	WBzks4rY5hCL6CZt+bUApnaX6FHO7tqKTnxqMduLEw6oB4ifqb7E/CEt9Hvz4Xw3e2c
	qb6PcADnPNYpbGknX556yXPKFimJlPnapEnokoy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647772284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Aks+ImAck3h+93RMaB+Lt/2iI4JtAVKOYus5g6r9L64=;
	b=kslQirzn4gluoa5MkgHDXRUEnS0BcNEvHxco6B42k8MGgj0KS6OVs5rf9N8Wl3y4
	uz+J+2T3VdiErVOVqdMYY/SOhi5ZBxEhQSSiGJuvz93xjy3X3Qa1LW1zEPznhpAP/7B
	fF3XeNRL4HS/fLWA2Yuml4sJgpsIJHg5QahCRDd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6e1b79b-707569c7-ab8f-4bf0-ae13-d9bd87365ba2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9361d50cf17d6beb4bdd380048fd955973d4ff8706ad7b35ea812c30e52689f0
Date: Sun, 20 Mar 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647772284
