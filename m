Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11512581
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645442184;
	h=To:Subject:From:Message-Id:Date;
	bh=Ol2hgSTokGKUJj8P5bBAVAa+wkHXUAXrCRLHNLMeCSk=;
	b=JbbMDOdaqANo5RjwMTWDRgqvW0f0v6ewJWjozpPQmC6pgswtbzz/ykwcOhKjEXFV
	/5VRkVk6DAolgxfMIO7l/BPR4EZ2DUL6UK005AqE0euLHka3qi6NwMt/3GtQj4IIKYF
	tPjO4JZfNoWjUmioEQoIMY2ENBrl+tffWKRxBhuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645442184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ol2hgSTokGKUJj8P5bBAVAa+wkHXUAXrCRLHNLMeCSk=;
	b=TPuWqk2gswaE8KsElPgApyEQ0l1GIYoi26dEZeKx6NYyg6O9qcYICNKntExAyJVk
	Hx4e1vrgMvMhgL/sUgr4LVxhkVH4acKWXLk8rr7KFHb2bqZbvFKqOORbxIm9GlgzB3/
	uugUwMyfiajBAs4iV1t9Xmy1PfHlotzqcmpCAPrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1bff3622-c5dd8099-3316-4955-b56a-c9d352086694-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 842074260b7a052c6f245584179a15899e39db44b265cc2f56118816dcfe58bf
Date: Mon, 21 Feb 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645442184
