Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075DA1375
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 16:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650386338;
	h=To:Subject:From:Message-Id:Date;
	bh=jM53ZgvlmkuIiDWQ66/se8YPfw/YhPWkGqvufVQuB4M=;
	b=fMd3xdUnrgkhiq/ecV9zYHqDX6HO7kNlpeKGHCIKXTV2WQ8dFKfssfRR0gS2zamn
	LQM973bQkf1xf4b1AxZlEvnPcBktE84zGAdgazVfKy8vVwb80dHduCq3tZOuFzKIixz
	PKP3RMLGQitBUS82ig1da9t2oKoSJudZZy0L02b8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650386338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jM53ZgvlmkuIiDWQ66/se8YPfw/YhPWkGqvufVQuB4M=;
	b=TV9qmNQHPS1xqT5Dx5FAhGtr79DR7Wq7jYeh+rOcSar5yIo/rK/H5Gup4CUBYful
	t832ib3tZiGas7XcvkDduh8NW4OTlxUb9tlsAVCYOORVV5K8X4AtbDjPeIuP4M2ccTg
	rEMwQCYaHokbfBIFFICgYzBx4jdVEVzlbQEr5nWo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018042b10250-008feebb-9e08-42de-939d-64b3c797b0fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35a97452399f2e651dfeb3070814e5f81c933b026162f58d3f0e75a42655faa2
Date: Tue, 19 Apr 2022 16:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650386338
