Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6149B7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659401452;
	h=To:Subject:From:Message-Id:Date;
	bh=esLHuEQ7S630SH9JaM4trDNIxSQCn5Pvb9varuNoibU=;
	b=PqIobF6KF91TZ4kyDhpo5zcCf/nE720g/+eDYo/eOkPRKejX6z1BU8qdxN0uhicg
	6KdzkIUrpdIwyeM0nmaWuR1qXd/3Xfq1vuBFVIeqI44wNQP4sVHyU3VO4n+9ncASUku
	Ihv5a731ihKzp9tWUm1Q4xiHhGjak1uFSFLiuzLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659401452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=esLHuEQ7S630SH9JaM4trDNIxSQCn5Pvb9varuNoibU=;
	b=gixlAPhw5DuQww6TXaBavioUZTF+TaAgiw6Ltn05AEYTJOTkD/849EHBHS6bo+vc
	XezE15do+dFF1AoaFJdvTpJ7Up+WAiG2in3/axaHgvqCqs+XSE+O7elHPyLufVo4bH7
	Liga6a4iUzFiW0Tmtj5TfRg2WhPvunpBQsWnFm+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c08bc21-ee53f9f4-2bbb-41cf-ad24-e2b49cfbd623-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef6aac9a56e885f62e1df35de47cab339d2e686d9710cb242996101922a5743e
Date: Tue, 2 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659401452
