Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BB353D9F
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656188813;
	h=To:Subject:From:Message-Id:Date;
	bh=e8XxdLyEGAWyB2BGjH2a9DhL0dhlltmfgFJKqYT/jiY=;
	b=YHnfBbTn7pG3MPmh0DwWf62Vu1W3vh2hSmd221irU81r2nWJwmZO3nQFGuGhnXBt
	emG+M3UjMyESpEYECeihqkizyugK0fu6A9v/ZnG3rUjNI2H9olTwNORGRvvxK/ST597
	+YK7/a3ClsaLvXNbHgEdkSgDGDg4hsSDbrxbYyrU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656188813;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e8XxdLyEGAWyB2BGjH2a9DhL0dhlltmfgFJKqYT/jiY=;
	b=DBDVoJZZ6glfk1Uu1+8xd4EL3h9KiQphbDdbEROJWTjTY39j9OGTKO14N3nvHfCB
	iJlvQ4oXSOiAcog8EQbPt0uasBoibE0vQbxnoEyvfZ5UQNQmDjzZze3Kd54kwJlcNCw
	goKej11YTLMhVO4zoom5l32hvAJzftfnw7G/3XHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819c8bbbfc-78c253a2-8784-4aa5-93bf-eeaf3fdccb97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f31324263aefd68b7673cb01f097b48422f377bb0a48354aadbc2831fbe045e
Date: Sat, 25 Jun 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656188812
