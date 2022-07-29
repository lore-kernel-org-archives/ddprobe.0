Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543301360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659092452;
	h=To:Subject:From:Message-Id:Date;
	bh=duyHlxILLxUqogW2A7s5m/1IS/ULKFND8y/qnax2IYI=;
	b=IpjAzuE9pNhcDrzA7VVkE0ekonhcYNPCmAzoC1dG92sawZAD1AkaEnBultyFc7oF
	DJZ0hoJZwRKuBaYEddqoZGPUx47e1caqhSL9cyJGOCh0Xfo/NzXivqKy5OVouSqk+z7
	j5v3kGyAaqn2jdG/RZeEzT0mb/r6ILBgtv+4/4Fw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659092452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=duyHlxILLxUqogW2A7s5m/1IS/ULKFND8y/qnax2IYI=;
	b=OV98lKc+V1E91oAspAGHB1Ue/WDQrkP3V9lDdeulF9GArj5n94HnGdwyaEE5A9BL
	jnBfE42vf0QrBGeDoYUYYbgxUvFC7PhqtXakzY10h+iEQb4vm74hTV4r7kmETOsFMLr
	Z/mm9KC0N4ImpedF2Mbwj5zyvUFQwomDDFd9TtLU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182499dc4c4-200d0695-bb0d-4193-9a83-4a1ae8e384d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fbeb4616ce0cef297bc8833b1eb96553f0d9d90772008fd531ee10a9f822017
Date: Fri, 29 Jul 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659092452
