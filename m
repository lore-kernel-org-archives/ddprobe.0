Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DC137A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 20:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657310812;
	h=To:Subject:From:Message-Id:Date;
	bh=sA70cxQ4MEzVLAMBoxUC8SKRozsaQewW0ziy+VRbw1A=;
	b=QH7sHZezBIKeY57LpwHtlzjT14zIDy6OUhfgYtp78c7nLyWZgd0661+/HnEd3Ffz
	LpVmDzSjc1cJtoLMzgH+XWb7OifXztYnakFLJNTiG0mzv5nP2SDn3IZ4JOacvzUaoT9
	Wvc4BEn3zjMbeKRtPH9rkQIMPiebv7ZLR4HqceN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657310812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sA70cxQ4MEzVLAMBoxUC8SKRozsaQewW0ziy+VRbw1A=;
	b=JaFKDSRAwq72fT992s4Bs9nQV7J+8YYgstZAC8Mwsyd+TdAywyZKhmyMzM+faFDX
	GHx+P2bwfMyUBifDwo6wkcJTrKK6IWuWNDJ5+mjHXgo5X7AttooOVGypkDi66yrIdAx
	WgDVWxkpyU16ubTTNvftUl0yqs02NJGOZW34ThzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181df6c187c-c25cbf38-4837-491a-a1c7-86260b1af6a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa82a06ff2227938d50be77564b26af11184b2222924903f6df864969e88374f
Date: Fri, 8 Jul 2022 20:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657310812
