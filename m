Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D30215A3
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660864852;
	h=To:Subject:From:Message-Id:Date;
	bh=ECrwRN3ArCwDNM+ozIJI8GFQxgeLdIIqjNyzMvbUHdc=;
	b=PhStnRU4G/FLwJDvqY0qjW6ALqWFetp2l5kd7qya+x18AWvBu2OuBMfdFb3HVmeW
	Vn/76wc+dq2mF87jZSDMyxXZhN3RyDDpXj/kcd6z+T3Jhe2wQzz6sq8pyQlIpvcKA4c
	W37NNNNSutY9K66S4l9zXGbNU3cRcLmJR3GG3RSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660864852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ECrwRN3ArCwDNM+ozIJI8GFQxgeLdIIqjNyzMvbUHdc=;
	b=TrdqDX/HFLMMcg4jE99Prl9DBvR5p42IjEc27Jke4SgPLeZyrfOitmbfGoD5ZJci
	2Yf1huVIk3eYMdKkFiSJXRhM8nU71AJu11LdXqE0fzhQ1tsczjDj43lWHF5Q1DIttaE
	jVB9O74CIHOgAUPLWqq+bpX1mONBg5DdSCSVe8s4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b3427253-bd294739-c348-47bf-9103-3cb6d3f9e1e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1870a7965d88fab8212c9179c5bea98d9ac7417c382114181572ca3a323f5376
Date: Thu, 18 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660864852
