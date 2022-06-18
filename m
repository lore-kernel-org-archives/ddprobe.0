Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB9C7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 19:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655581379;
	h=To:Subject:From:Message-Id:Date;
	bh=k28hS02JgnXRGvMXRt2D5OXZWmhmywglgvrkDyXO3qU=;
	b=Gf+O7agfjHwP3FuTearea9cXJmKe2v5ieERuUL/rywBpcctFV35kvbNcfiuYD62v
	K8eiFnnlLRZgWIDyUGHdfssvWjxUIJVADFm35W3mBnBmVUie2Wq76yi/Bwl0Wb982ir
	CABQnfpRFc0kVUepPYxn277OTmNsSRaKZ1Q7MwHU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655581379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k28hS02JgnXRGvMXRt2D5OXZWmhmywglgvrkDyXO3qU=;
	b=f7VVfMQJLbxRnbEEcHXcvWeO5BRwXRv+fvZcYtS3VIDf55R8sVKdnfx1dbWhO2KX
	VRULADSc2yMOd5fUxPn95tkr3MsUk37FnwuC30fkDNthl8rUVWFbwQsog9HSgoXlYjE
	UvL+6+sxGcPCFdqB4JB+u84A7JIyvNL7ixvY17fY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018178570a9d-733c5c5c-aec0-4fca-8f79-54a66822dbbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7d3082a3ec0d05eb57f19d950401aa5ad8f01fb83726f8b101d5d6f00144a8c
Date: Sat, 18 Jun 2022 19:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655581379
