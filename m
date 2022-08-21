Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CA033C2
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661105452;
	h=To:Subject:From:Message-Id:Date;
	bh=yXRY6qMuIP/I7S182m4zKdqp3PdPVwi2SNgr/qiuFzw=;
	b=M5jyWP4lZRnFRPoQ8BqWoQ6perMq/qFt2LivQ31poxKeAd3fo2qOOtHnVTNN5kt6
	WanE1/s5Qlcf90SWtz8XsfzCEYbD6e+kyN8ExlTbPE9+r9bXVwXpl+HCbCUo/2XwAjK
	YclFSEjU84vDjDyKL7VXFPM+MHjZKKGk7M1etRuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661105452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yXRY6qMuIP/I7S182m4zKdqp3PdPVwi2SNgr/qiuFzw=;
	b=exs30HiGqgztqC0jpQm/E2B7+W7omW1q9qs2f8YqqhYVLVObXTQbGv5eUua1NMj+
	wAjknQ+OcECtKLeoVP7rH93CbkC0C9H0DQ40a3Wi0fIaSandAD6RFi7uzYELPaVnhcf
	PNvUgKO1Vt4BFHzh1aw6eV3pFM8F4PYdwVVOImt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c199b625-4d517ca8-896e-438e-9880-d47099500c1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46b41ab8e8d498355be4eaf52aff1ae98580abc27009b5091d4870bc94ba4569
Date: Sun, 21 Aug 2022 18:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661105452
