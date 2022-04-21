Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD9F1363
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 00:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650499978;
	h=To:Subject:From:Message-Id:Date;
	bh=m5Z+A00/ICUxO37AHowzJ+klXdfmEKdAnXE+E9eNY90=;
	b=JO+T6qW0vh1hNtIvbok554tfyGNad78WR8HRrN19xljQ5f+wmd2b9rd635uohAKp
	D2fQyxjFwVBsGmld8wr18Gwise96BceSCW6iDjbG7HlwN2sK/Lifab9Q8JaDbIN6Bnr
	bMx2uYzbmdNjRAUM+hHYoRbtG7o2eLstvkc3JfDg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650499978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m5Z+A00/ICUxO37AHowzJ+klXdfmEKdAnXE+E9eNY90=;
	b=FS4eQmoDwRehbHaFEtKeyluL8jnN6JWiueQIwD8NioxNyu+Rmwc83I9FR+EmA7Ks
	wLkvs7H68V2dQc/n2zzlizivOsx+zHyCgnFiPxphZezdC3CEEaiAtVq+AXSsfzp1ORy
	mvKeFpXOetapf/UGKoa+Qg2Uh4h6yQ4f0BmL/S+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804977042b-43501432-e187-450d-9cd5-91a65de28b25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a42d95fef5180a0c8f350103c1b2747d696bfe1f7a6b0948a2ce42a2f5ae1b77
Date: Thu, 21 Apr 2022 00:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650499978
