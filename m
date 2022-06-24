Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EF8C23CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 10:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656068212;
	h=To:Subject:From:Message-Id:Date;
	bh=p1ieA6RiZf7oFo9L2UH0i0BbovypEjItR4SbmVIEDwU=;
	b=c0CUx1l3exCCdr3Ru73iTTAuP/vUFcBBNmiEKmkeNCRD1wxBd+qjJTUpKNMZ6him
	ltttGN3l/fRFbMnglDg/x50M5pfV8DQmaeaqsKS/kaY6yFggZmxuuyKWEW0n/HukwY7
	MahQQlNvxGYYwzHUw4rmmwhqP+CTSH4UryxNfhNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656068212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p1ieA6RiZf7oFo9L2UH0i0BbovypEjItR4SbmVIEDwU=;
	b=JBwkHMMFTt8/keo9U2cKQ134KFiFhQ8NFSDtmdNcJifRAOiTgi+5jAM6N97yofmQ
	97eLfnqUH7T/SMCUMbBU9h5e6aHT4hYN7bCsRnfjcbQaK/VsYemdYfhzfAaobBAxvdS
	VzLmo2q+yWqd8MUWDCwJCNenPS2mFuaywUj2Vaps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181955b8659-fc2cda5e-1e63-4286-bc97-a5e45bc8f8ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4002cb70ae4d3dace2710aeb5f4327c8e967297a62c64f332f88174b3aa05489
Date: Fri, 24 Jun 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656068212
