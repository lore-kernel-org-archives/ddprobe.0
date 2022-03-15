Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85CEE1B61
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647324684;
	h=To:Subject:From:Message-Id:Date;
	bh=Rqk+/vjaYStGrO43+5HwSnXOSamwRwdMYV5IUCppzQ4=;
	b=RMBtrg3Hxn2LCDYhBKrJHizBZwq6yMr7Lwr9pkw7IIjCAAUn5si5pkRVE1HhvK9u
	kXKWZDVQb/+U1cG+Oc2B4qxKiJkfo28EKCM7SQ+r+Gt7kszvJzJDkOMcdzeLWNNOQWY
	SNyqezG/GNktT33PWN+Zx0n+nO8Nx3PROKg9Ho8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647324684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rqk+/vjaYStGrO43+5HwSnXOSamwRwdMYV5IUCppzQ4=;
	b=Mtmj1ewzqkXLcofzW6tY98UznIkX03vtTC4E8YPxEGO+GroHwMoU2IDZ+FJEzIfO
	G8Vyo9nmemUKi7cfrKnhD6ZF7THNWN3oA815wfyog0b48CQMELx4vyVDIDKjm+/F4YL
	1UVZIYwLRH6ALc8v6YUg5ck+K94Uy4xiHENRWLNM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8c33e1bb-46a9361b-fc9f-49b5-85f3-232df51db9ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf088510201bc14ca2fed1760fc2deca5d526bb8f157acdef539bd096b4af8cd
Date: Tue, 15 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647324684
