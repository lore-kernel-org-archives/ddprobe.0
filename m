Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207BB801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 11:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650283138;
	h=To:Subject:From:Message-Id:Date;
	bh=rUQCSrSK1P/kw4Cwh2hQc6Wt18W0JjmR04SVe31wmUM=;
	b=TY0+iTItEjeAs1j8X/X/AZ/G01ocWOnLzQq/9aieGR/V29k9CvnGyj71hDv7ZvpN
	AX0Pc1WavRgQpGUJG1KPiXpIRbKArIdN5HppvBl+etlCa84ARRu56Gay5oprKNxJqIr
	JpM4J3CzfQ8MoJa7uOK37gqwwMw6BFJnptp38vK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650283138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rUQCSrSK1P/kw4Cwh2hQc6Wt18W0JjmR04SVe31wmUM=;
	b=CmdClMrZ0ml4L7cLJmyoG5g6gzY4enFb6Dr9m3GrxCZtFLbuutr5hagB/t5+tGbb
	kVYVRHuHEHeL4bqSAi3Wr3W5rYSMn+OgL7NsmbS5Efxua2QveXNHy2yzY+0UbA1x8La
	gaz6GZ5LwE0TSYHlIlitvHVcj3cUHC6cJUqm2OgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c8a4cc3-b0edbaa4-18ba-4661-ba2c-cd003394eb8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3648138d6e98b88c698f2ef382aa53c144b22420d7845d75da464e2ba15348c1
Date: Mon, 18 Apr 2022 11:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650283138
