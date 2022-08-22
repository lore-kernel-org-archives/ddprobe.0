Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A223206
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661189452;
	h=To:Subject:From:Message-Id:Date;
	bh=d8Jnl8mvjkLBO/HdQH2GLpbpDHoyT2wbTim1kdk4AqA=;
	b=GFIfZoLwd74IMfAgZOH3OstBfDfdZWeXignY0EKpRmjhKBj/DLnwQAZjAPIcu1rb
	XN85zMev9d/qlP4EQMZkJoYHWPa1UGoQoPCGiR7wFo/eGV8SbmB4dg1ef6/LuAp4jpc
	yGQNCvaiqtmVL1cxTHjlAe+ymtMpaRae4gjIRgao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661189452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d8Jnl8mvjkLBO/HdQH2GLpbpDHoyT2wbTim1kdk4AqA=;
	b=PXjqAG7umPY5KUTm1LjUwqjXLJT0mVohdnBAq6qskCsSurB97nhHMItRqI841vSY
	nsc+T9O3Z5MYZLtKKUf9dw4LCg4dMO5xxNq7v+EyrhW1fQ28uNeo4sfjk+qrGi91h3H
	+XZ+SZd9r/mxpirLH17Ueyd27hyBBM6jrqZPI1ow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c69b7314-6bb9f067-0bcb-43bd-bc7c-2a6706077bea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc851234f5018a6e4cb41e369b326770c519f2d7339d6062418633988bbed2c8
Date: Mon, 22 Aug 2022 17:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661189452
