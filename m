Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8FC7A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 06:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657951612;
	h=To:Subject:From:Message-Id:Date;
	bh=VFcOPXqskcpcFZ8qJoZl4gL5hevRXkjGKpk13mlUE7U=;
	b=b908HKMNWgHO9IyYLat08+Of9srz3Au5Cqzbb9CM+aaWP7gknTkwSSLvtJfM8Q//
	a8TNwvleqflH70Cv7lxYuFYn6PHTjZ6MwhddCu6YTct/7eSoqBvMPJ0B8qPPZ07274F
	BJLEC7ABS7jM55tsjoxK/cDBgbYSAEj0e6KsOUoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657951612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VFcOPXqskcpcFZ8qJoZl4gL5hevRXkjGKpk13mlUE7U=;
	b=hE5BJjExLozSPhI7p2I8aO2q9xShsFXmqDllw1HDuw7z5ICsx501+/l/GI6XcXEO
	XzpEFMY2WfhlpdnaUG4fj81tfv6yi45Tx7kcn0hKMF9iW086+/SbL8Li5lijsNEEj4W
	CQBv1KrkoCtJCRNzNMivZblzXeqkmeKsSFOOyLno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182059dee0a-04489d4b-d511-4861-b90c-c787cf919c14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0006b5aef61570ed79bafde985143548a0c7590ddcaa24bc3afc2f773394dd8c
Date: Sat, 16 Jul 2022 06:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657951612
