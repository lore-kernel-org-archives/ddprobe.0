Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABFA4680
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 16:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658420212;
	h=To:Subject:From:Message-Id:Date;
	bh=7qAKgSZjN+X0KVUrw3+Wnfg6XNAMxILihKUswcazWJc=;
	b=JnOgCPqnL0nzVv3Jq9xc6k/lXuPKUNb36ZGXkYtsLLLOGxHNBEHPeMYocfJjMaIr
	1SSBg+zMkk0lg/LZK45taRVkWYl5RRNBTNs1L5NCrx2i6CzBeC9ysF6tBQQ4YZPou88
	5jO9w8SxzlQcsjb6X3gVkE2A0VNQ5Md1c4icIcVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658420212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7qAKgSZjN+X0KVUrw3+Wnfg6XNAMxILihKUswcazWJc=;
	b=iNSimvdEu5OhDSbnJQF/BfQg5zFbt7yEtQ+BvYXrJD/fsun4ieTAgSEIUd1BjfoS
	C5usIYbVXXoxccLZsWkLxTma9sqLDqTaMLfV2JoqlGwqYJK+PzCdG2jV8d1EnfN2oBP
	vFf+RZ3btOnF/lsME1InWAFbY6xyWz4NSJo18u+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182218c325c-9b1c785d-8553-4df4-8810-d714849f7f03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6bb1c957f349401a67784ca42378f57d53b7f9f6197ba980bdb5ceb378f82f5
Date: Thu, 21 Jul 2022 16:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658420212
