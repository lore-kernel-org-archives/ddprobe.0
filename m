Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF53E185E
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 20:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651351138;
	h=To:Subject:From:Message-Id:Date;
	bh=TyhTvRXyv3iWOpgWn7CwQQJFoeB/1YDdN6hkVZFMAEM=;
	b=BP9RGvQjzbqt4NaVENC3FazI3SH2YtShER7WJsh/jLH96kia1CnVNWKaQhe+XbPz
	mVLXfBIF8nNp6R+RRO1Q0Pqz1LCD4UZiNPPD8hFvNOJSHZpqksnWrxj9pavzhO2JcYK
	e+SQ19ZEc4byhbzHX1f/7ic+8PL8hvyBdTzMCpB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651351138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TyhTvRXyv3iWOpgWn7CwQQJFoeB/1YDdN6hkVZFMAEM=;
	b=Ae5PrU8lVbth6IBvAJo//DD+aWabjUA4hN/eyfDAG/cFrB83/l0GAYjYXUmCiUKy
	Z3sY1/XfnaAvdxLeGu4ian8IO+mN9zSvf+bbRabSsdmLeP4IKGYt1Rkf/m20qRyvn0C
	lfBECJ61OU2JttwMxeCkqZtwx3K2eHBDGWQLwGMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807c32afe9-e59ec87f-f7f1-405f-b0cb-3af31b5bf6f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49cc18004ce20afcfa9bc5ea4d84f40f3b83c0a9002ce118851e6dadbcf95b14
Date: Sat, 30 Apr 2022 20:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651351138
