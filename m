Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60AF4C9E
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646019084;
	h=To:Subject:From:Message-Id:Date;
	bh=+INoQyVOOnJQHVKh8vKeofepFRu1qdKVX7RseJvOpZw=;
	b=BZ4OH6Hb61wlIh7w621Jc/IxiWymA8ryxdykMsI49L5nQMX3bVqeAdDHwlv9ceFS
	k0+U6qCEWn7uW15f5ydwJW/zVVMTu6s+lXs3qtTPRoJE2fFjtdF6/cDwMCatNeP5M8h
	1JmbXz6LrIDkm2/rMAG0lM/KMR/Ee9EaIK3/VbY8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646019084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+INoQyVOOnJQHVKh8vKeofepFRu1qdKVX7RseJvOpZw=;
	b=ZcbhFqq8c6F4rBpJ3mSc1JWtpT33ylGHg4XhL1ctJPmH9hxyXxm56rqpJdW71eBg
	v/y0TcUKBoF6h8SYvyYGDFhGEkgSuPBj1mczKq/1E7DB3q39DR+o5hcbe0BVNl/pev2
	iSbEeYsl0/LGy09VANRSZB4I7or1rl/1tPUHjNrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3e620201-cbe8425e-c826-4280-acc3-15d46669f5ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26615e8e5622595a30229e81917ab98c2fdcb1e1a69dbed48027c4c3a8190508
Date: Mon, 28 Feb 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646019084
