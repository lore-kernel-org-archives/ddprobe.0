Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679641376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 19:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652730239;
	h=To:Subject:From:Message-Id:Date;
	bh=hwPp8tkdVRzB2fBn4Lyhe0/io7apfFDqWnrvSor86/4=;
	b=DEMUMQjWVrJdLFBMSI1V+6AJePdsVdQ6xk18aDfbnBvFdc6Jh+bTflMCmttIb6V7
	ouzc9Ite6zn7thSSgJggSyqtBe7PJQGdOLlKaL6DWyqWER5y05BQ8uCzXk501LQu0YF
	BWpK9eF5iIHCURjXdnfLo+4FTpIvsteJPV6U3Fq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652730239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hwPp8tkdVRzB2fBn4Lyhe0/io7apfFDqWnrvSor86/4=;
	b=E8k2deQXPw8FMmQ0V5sZOPHu0Bt4fAKiAKYas1tAy0e/oGFWLhUdwD51tkUBlg9m
	Jh8lrg9sACD11inGwy6fXyzTBwsJNa+CBmoRL5yBArJ2jqrtTbhnsr6pnZN9hXAjNog
	gkC78wkOcA2LyI5EqZG5+QDyyvtLojb+D3NMJPeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce6618fd-93a5ec52-1c6a-4522-b5d0-8314e8188f58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3482eace64c2d24a549f83eac50f5486d83d68b10f6076234338900da39f210
Date: Mon, 16 May 2022 19:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652730239
