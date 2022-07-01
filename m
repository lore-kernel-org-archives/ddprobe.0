Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322BD10E8
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656651412;
	h=To:Subject:From:Message-Id:Date;
	bh=UQNmYfzsYt9Z1qykdpOIvg99A3VxacM5WCl6MrnuMpQ=;
	b=N6unAI0rayjdL2IurYpyPtG4H40nnC7IO2B7OcuJFV9PPLs2Dz+uk79207tID2es
	Czvcjw9oCXADJJ/QVI4coJD/dyTDYrA0JjTOON6kaV0Y8GYpaeuJtNw+nT019s/C3ZX
	IzFdcEmoJCYJxdgnsVZxP6TFd6RAwXzWjvd7AFL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656651412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UQNmYfzsYt9Z1qykdpOIvg99A3VxacM5WCl6MrnuMpQ=;
	b=W16a8sSsD+ho6X7spRw3pxy4TrVzzkRabBUytiSjG3gLuv60YHICDaCPGfGtMVkW
	16qgaHmP7lEQbna8Wg2gns/q9Z0BbKZ4XPhh6nvfAYDtX5aij8eZ7RdDAufROV3b0dU
	uV1kDkuR3fALLwgg/QaYdYNvaDi89Lymjz3B/rQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b81e7323-e0557739-69ed-46b9-98e8-c4ccc5ef0022-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebf56fddfb7ee33d7917929de31b581363696e599c04af5f574ca398bcf326d3
Date: Fri, 1 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656651412
