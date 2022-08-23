Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A34C3202
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661275252;
	h=To:Subject:From:Message-Id:Date;
	bh=NLtxoI8w0sMOn4ecvrGuKpQK9z2j2aaeIPMKkSmizCI=;
	b=UeNX2uqvUTlvbNCz8bZDxCTqmSTrbFpmQgqcPT4POYK18sKnRmqxxoMoGB9MOmQV
	duzD+Tk3khLaLELQex5KiXeCsQmk9EhAYpEpdxkdhPqxxlQPPYlholDfeqzoKG1uQV8
	9/3P+OkIfcRaSoF7m2Jv3g9ic5khFpF7zI1eLm0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661275252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NLtxoI8w0sMOn4ecvrGuKpQK9z2j2aaeIPMKkSmizCI=;
	b=GGPd6lGMX0mRVXqMxNlyEEUEPu0rHBhRsxE/6ne7ZPagTmFHsPI4Bq1XiC19T3Wt
	iY2jU5Mnv94g08pnQPMcIZWeZ8UKDhE5XW+dDMs0+CQ/lXE5zmGC/5uBVR/TJxP7dLU
	zi2JkJkkrD4uug3WW3QrApR8xFrjkmwNslLWpjeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cbb8a768-0a727e21-5860-4a42-bd96-5bd1f2f65866-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6337059cbe77f02bba22910e55091659b0e62751dae62ed5ed4776cc56c7f37e
Date: Tue, 23 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661275252
