Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6117C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644739852;
	h=To:Subject:From:Message-Id:Date;
	bh=chUBPLECVyZRv7yXo5Vgzserl+cWn0VmzUmwjG0OeP4=;
	b=jYSrlQGWKbIMYr0YrskG7wjcXPPUHnmBXcA50KZ2AJeSFrpRXgxsPUde00e6noGj
	3V9caWtEE9UJRfCA/PqPr/EonPd+dWQIgob4S7CXmE6hHunsdYkiT9mZloFZjakym/h
	YVyqGcz0IJZkrVQ1W2RYxkuvad/Pu80hNLp6HONw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644739852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=chUBPLECVyZRv7yXo5Vgzserl+cWn0VmzUmwjG0OeP4=;
	b=gMwqwXdtfMOcbNdsvKDceqDo+0+MfeqEwEcMOoyTYTUJPtZRGKkradJokqd5vRFx
	kPx2Nt3qHIqbIQtJ8poZYwpbuoAytIzwgec146u7G+/vNVldUfc9ZVEQXyknVtB0CVG
	YaUGPwV5dhgMvgdH/A/16J6YdjmFkoNduSC7y8VU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef2227732-9e9bf594-5c28-47f6-a4ba-016bd679893d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caca393377057e44b7969ccc43bf27fec96bafc5acba186e4384280ce499724f
Date: Sun, 13 Feb 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644739851
