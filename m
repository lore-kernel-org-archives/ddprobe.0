Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A13134C72
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659115253;
	h=To:Subject:From:Message-Id:Date;
	bh=inxJDsmhxInj+FJVIc2SuZ1fr4a6KXdefw3aLLCmECo=;
	b=Eb4X8Ixt0wTQBimaY6DwnOf4OTwqHOUyh61pR/xlqZ+NNMPO99pHMBryN8jJLk5G
	9f85yfdW6eELilwYisvRNVH6MBS2B7EvRC81fmbFn0bFKZnvq0r9qeexfPBlQSwQEUZ
	FzAcUZHR8grhojtqezjzmkBRq20SDoDLCVkoKUxU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659115253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=inxJDsmhxInj+FJVIc2SuZ1fr4a6KXdefw3aLLCmECo=;
	b=kEy5vrY8CX+SPLsJQ9fXu+9V9/B7hmV8tuvxoD0IHOmRTYU6dzQzyuJuNBLneQ4r
	r9kKSeLLlyFBD1sgbu8MQBA/gQTbUcydsiu2p+d0F/adCoUEGwMDlI3CpCgRcu8R/MA
	Lt40s+tWP66lHrEKrzSa5tCzfSRlOiLAq9il5Y/Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824af9ab8f-7d2b009f-2bc6-451d-853d-a1a24db0e7ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00ab1626710b6714620a77dcfd1f02f9663105dc6d0207c4e9b78a1bc2a3e06c
Date: Fri, 29 Jul 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659115252
