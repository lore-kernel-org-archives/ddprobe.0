Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848FC258A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647802885;
	h=To:Subject:From:Message-Id:Date;
	bh=76xq/vD7MhRxwZCstW6okT/q//G4x6CSC6UYSpqIChs=;
	b=SEOz3WxYskJFwUDY7a61dnhvMp1KeQe4KHwnRt9LYw8p6VjU1MNQ3iIgLb7P9TV4
	FSCtV6GB7QWXNh0+gET31qZiZaf/gGvx6u3Fth8SfFSV4qQ5pDm0rTFD/SnCYoUL+ws
	rpH3k7crgr7Z4lUX+iN8PMKCNROnPpEcGZfKepWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647802885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=76xq/vD7MhRxwZCstW6okT/q//G4x6CSC6UYSpqIChs=;
	b=JyKIQ6JBH+7FnbDn/4MCcbxWKYhaqGvmVx0tufoln/nkl6iQ8qyYJ8YV+xDTqhOm
	KvyKQ9bbtheamWV/KrCpgz6ilOGusjbUqPv16ZXcNRbTh5v4iXtYGzUJoup/9W/lW22
	ik/AmZpZWyQIqa7LoY+FmeU2ViVwgtzt20BlRXQ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8b4a2b3-ab89b393-0a6e-4a65-948e-df7185b7c2e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7fefc1e8f8a3d45ca613991cfba409420220be737869b7b6943c7ea823ce490
Date: Sun, 20 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647802884
