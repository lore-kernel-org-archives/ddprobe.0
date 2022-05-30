Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4998C2F38
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 13:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653917939;
	h=To:Subject:From:Message-Id:Date;
	bh=OzGIilZSiLkKw1zH3WTenwjU/o7VViKpXCqNMTOq1I4=;
	b=kyb75CUdmz1U0Q6eQmFJfVMmQ+rznpImmuxbJaM3vlBY2NVuDuxi8I/cO2GqQGY6
	FJEE9hCAkfLaDKLJKZjrqWIQXOU8nbU+dKifAZoSe4HOZ9zz/aMd2lvUA5KLD/XamQ+
	ARKvemMmWjPkd+w8ewJXD/JrEO5EYfAI7fIyu0a8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653917939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OzGIilZSiLkKw1zH3WTenwjU/o7VViKpXCqNMTOq1I4=;
	b=PxucgUS+SXJmFlOYvW1td9rZqnNtGz+Sfupcekx/cl/m2AzSy7bI5BwlXlbbivfY
	jysqsex6ATuZl7LrsQ7NXNFMRhKAfiZHUCYQyHKsFlNUAq+C1I53MMYE5QXL+7SXMZ0
	fERTgfOK5n1wXh9KridA4Ja4Hm7yBNFQodrAvvsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811530f66c-48f6fdf1-a8ac-4ae8-ac43-9fd04db741c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72bce0ca649024532954ae6e3d147bffca008a87fd5cc9317348d1fab19f2f4a
Date: Mon, 30 May 2022 13:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653917939
