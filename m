Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D4937B
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659551453;
	h=To:Subject:From:Message-Id:Date;
	bh=iabPjrMX/UAuohy+kiDuoGVjfZ0TcFKGThmjfRh8+8Q=;
	b=NizAHobw5m1874uvqwISuxQ7eKBNaeP3b+RCafb0UA7fg1E5jGLnzPQWmA/aBcxi
	pbNimEgGYYWKIgspQCvIla+ZGkHFWwE2z2SFsNzxYpmQjnMX0FC8H1hLFnhgaD90lWP
	suz9MHepzqk0Ec1WJvbNHUU1wairyJiozPhWXjlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659551453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iabPjrMX/UAuohy+kiDuoGVjfZ0TcFKGThmjfRh8+8Q=;
	b=aMgIp5iO7c5H3z4Pqfw3h7gC6xsOf9ie1f/ru5YI6kuUVa7VvcPklT1E37Wvrn3w
	0Xfm+OevlyB4wxfhhy7zsT/ml8Q5Z1b5pdOE6ZYVVXL0ex3nTFQJRxhQmZ5yGVJDaJq
	DAQkHddJzv+9dK1uEnJHdSUVZXO90PjjwVDZ0i/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264f98dcd-08fa4d3d-b32e-4a43-b81d-fc0a2658685b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bc30580290e97afa4c5083bb27eba5056f9bbc8c24aaa80a92283a242622086
Date: Wed, 3 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659551452
