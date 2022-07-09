Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B17A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 05:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657343812;
	h=To:Subject:From:Message-Id:Date;
	bh=JE2Ncml/lUGXhvacz+lV7B2DktYxBmguIREQdkdPPwI=;
	b=NSiH0dSFmxg9AKKw0d8Gtgq3ZSkF0kOPKf2PqVp9F3pDq0t0gIM67JbaxYDiBWKP
	atM21WwEw2FpVzfo2ILioMJ8cC+JKXT/CiUNiZaeGC386b5VtC592sEKW/VNk/rfnIs
	wB9M9I5f3W+BJXyb+csjQsYLxU3OCrgmaqe4M5Fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657343812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JE2Ncml/lUGXhvacz+lV7B2DktYxBmguIREQdkdPPwI=;
	b=bDfzRIBa/JSKzSyJtWNEFNf0K1KD0Ody/0apzCaumLgv6d1bpMZuN0sBKTGsw0fD
	FDt07RewZpl8Mh59ZOm37H04ffVMLZFNu/BlrSNXfvWMfZIGTWddXc5e3z/8/ZBiOnN
	hQdEfEbxZZRowyUNg/WiQybwoVo4kXtntTNtMsBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e163a326-5bb5ca88-76e4-46ba-a2fc-26d93e3e7e5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99c94e497a213fbb732d9a51542fb8c8de5d8bcf40a16342d89827943a562730
Date: Sat, 9 Jul 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657343812
