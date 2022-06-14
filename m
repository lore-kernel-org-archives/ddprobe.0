Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC2D2F21
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 23:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655247959;
	h=To:Subject:From:Message-Id:Date;
	bh=mrYWaneS2foaf8fSaOBUf+my5ckfn/d3Fu+RORBMS3Y=;
	b=V/PfEk8ErwBLkDE7K4iIL3bD0rkW9rfCNx8Dnhb1crTyE8ydgaAqui9lW5LF9S89
	6hMcUeWel4yErVfwTQL/XEhpMs8sQIySwwprXPcVcXGq5EKfV6jNzCTbNDR+aLVhpC8
	tuyquqHaXIjzCDLC0s43aHTeYsIYPjZPEXqT/RU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655247959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mrYWaneS2foaf8fSaOBUf+my5ckfn/d3Fu+RORBMS3Y=;
	b=hlDvBUPTP/f71ehk4uv0tSk/p0wFm2wnukNLECp1wUcfHbTxyk3OxSVhd2MkDxdO
	rSERZRx89p93y5tcniUbet53VXexufN31m+jPv0A8E4pZuC9b0L9F64NKo8yQIsyOq+
	1Ee08sB4/gv5FdF2IBNIwNtafIK9iRgV20tKGly8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181647774c9-eb93ed32-7491-4923-82c4-4a4a8258055a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21d2f25f7d2b12fb2f50b2fcf27a822b2485ece2719f1d6c8dd2ac1e4e07f4f4
Date: Tue, 14 Jun 2022 23:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655247959
