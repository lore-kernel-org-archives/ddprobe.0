Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94EA318D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647651684;
	h=To:Subject:From:Message-Id:Date;
	bh=R7BCQndM+vY4OalT5o5nk2qNrrqNdRODrctLakaxA+I=;
	b=X/1vbfjDxyAuNMVHHNWhrjK6xVKwW8w7CnwSjdPzo6WBBPSNTiFiSgZJn+5JWzNa
	kObf6bI7OdG7w43RA8q9QdIVc9uO9AJusnPToxCooRxHe7t5puNijJl4PsLUimJufXO
	2KC/mNCiTfmfyE4wTF7sz3qc4cNco/S4tkBxc6ho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647651684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7BCQndM+vY4OalT5o5nk2qNrrqNdRODrctLakaxA+I=;
	b=Vf0xD7QrPv67BwXTgVMbW0XB70+o4sQ17zyP1DW21ua9UiloW2XNk/Vispl6HwhC
	e+JPJJXF6Z9e5w7IVzdrKzAaHiua4c8FJZH9BWhav5iEi7Ln8KiYP/hFUE4Sgwhz3To
	8NziEJuxqu2Wd7nX1CZYYGVc/Jh2aCCmnn9i6FHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9fb1819e-7d702941-5592-4ae3-b7d2-08688bb67bb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13bbc68d81a1f9e8abf60b37c6edbd0cfa81d1a2fc2a4df7e51f1a181a8b4374
Date: Sat, 19 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647651684
