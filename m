Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5B32440F
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660830653;
	h=To:Subject:From:Message-Id:Date;
	bh=fD9Pev6+5OmtCYZ0ikJcHOHK0wk6NGQomojFC4LGGT8=;
	b=WMAJHmvBR3NFyoAGlrmQK72qYbDitOIgIYTnj/f/o2QSNEmQA6P0ZGI4dl/hPDG6
	m1R6T1ajXzEjDQdqXGjV7c74fsA2S3HgVGT7egI83f1aN5VxRcVJhc67T+AXyCvLbAx
	OOFsvlwV1nBRPMWnhXOsaHdMiWAvb3FfJClOw++A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660830653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fD9Pev6+5OmtCYZ0ikJcHOHK0wk6NGQomojFC4LGGT8=;
	b=ItV9xnrzU09lj9yU9Nh2hc7gUrLNRKdDlGWRyhiy4goNjQJDfqxCmMeXj2AMnIDQ
	MMbA3P//Vn1bPmzEcEp2/AE4gNrcJeI23LL1KhPPbK76qdptkjXdTxhua9+8UUucqeh
	LzoQeepbKljXe7YRl8H0iPDK4qTxK0DXFE/+X4/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b13898cc-45aa9d21-fe06-47a8-b1cf-3021e67872c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be45303167cc334ee85be3c7c54761c25785d5588c6c91096fadb7f1aa7c49f8
Date: Thu, 18 Aug 2022 13:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660830652
