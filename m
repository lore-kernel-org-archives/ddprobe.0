Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C47B17FB
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652347079;
	h=To:Subject:From:Message-Id:Date;
	bh=Gm/aALFqg3K8+JPxvsq7xcyrTdjMTZANIneS+INoy1o=;
	b=ZjQHJS2OchAj60u83rdLJxRypk1NfefX31Li4x2cwFNuvGF/D3zc2P9aS4xJhNXm
	lbPbEdbTakSeL9PoDjdd4jcVzFUrOr03AENSO2OIiNpTBix9HnsexsA0bU2YH22xVUr
	Qa5gn0g0GHbxIJ7JL6z7d9Zv/cgSHtnzZAOS/Fz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652347079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gm/aALFqg3K8+JPxvsq7xcyrTdjMTZANIneS+INoy1o=;
	b=WVJy99wxoCAZUbfv9Xi6EMBLLjRNyIki2AxIekNQQ8lAT+ZneNSYLb0UATUIre6L
	y6XHqlKMUfQyFPRSlwj5ECZ7NegcTmprnT2PF9Wzl85H4e9eyldcEpBbLu8lYY+Dx7p
	IbSlN0yHFSQ+3pmRznfEiGVXXm43qjNkyF34hSh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b78f8a6d-9c1327d1-3e51-4f6d-ba3d-022190cf77bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2fa63502e61e15efadac620a057d71603df0d1a3b662683d8c55df807de2b5b6
Date: Thu, 12 May 2022 09:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652347079
