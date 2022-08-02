Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6877F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659441052;
	h=To:Subject:From:Message-Id:Date;
	bh=l4qIWSDUSjYyFK2egGPydVsPdn3hpBR6SFFVzfTwG3U=;
	b=IaLnEOEaG1M2v37VSEjscj+KD3wp55n5bNOEgjkaehxcoRKylXjt5DQ6FSEpVsN+
	K+YSt920oJoc5YlPkODbw5P/3sgI86KHO89erBxiUIxF7lZdFXEZLUeaNB8o2XvBFQ3
	EDq9F1iaSsu+nyrRX0L0Xab01OJjUJD3eqq1K0WQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659441052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=l4qIWSDUSjYyFK2egGPydVsPdn3hpBR6SFFVzfTwG3U=;
	b=OsLFXu1fSbAaZ9pz0ag4d5O5oZYR9uGbsKwCeDmDJuygKhxi121yxnUV18MWy2+L
	vfM2CMFyG/YdHIF4pwJHEUPrGna1E+s4FXGwlySstx/UqlOS4+rjKV9qtB9uocHdJvM
	0Pieh1EzHUi38TIvXBnixGJuiTEypbCA+57MqgcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825e64fb9e-5c83f793-4773-42bb-873b-486a77b9a6a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d14c45f2da2d4c7ae779e58988bb61de9e5cd9f6dd9a71725916e967e1bc5da
Date: Tue, 2 Aug 2022 11:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659441052
