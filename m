Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F486450
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 02:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646793985;
	h=To:Subject:From:Message-Id:Date;
	bh=iDPntWMXzyq8PfY7A9G0H1sBxcyQUyXnOpxcYLlnvLE=;
	b=NwqMC56YUFmwuxL3p5FRF9baN9drf0wDpdwVJuheWbuKy4nFITtK04tjlKohOJNJ
	wv9GI9PmiWHqJPLCkssfk/XQTi/2IgjTS1jikB55KpszATvPMbB7CvkO4C1Bp2/OWSx
	PzPZiwf2UGKGOqOvU8OHQ92wcQ8wn/oXfgBumSKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646793985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iDPntWMXzyq8PfY7A9G0H1sBxcyQUyXnOpxcYLlnvLE=;
	b=LXo3BfFsJcE1MltNhW1lB3lKJzJ6dnUJxaFOLVY/EfTKe1GYGz+2HIJQYQ27+b3C
	5a2agLNmDXn+mhS0LhsKdczc9yqqW5DefB5Kv2ykuj7y4LHZu0pe5dmpts1WYNOts5b
	WiqHy01I3tZZKTfZykVHG0xQJPtR4WVppI/oodGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c920b23-b8ebe6fc-e9c2-4c9a-986b-34a6726aa85d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36283e4d01eb42d3e8a74e8e5929363d91db41183f8308852db6f430bcf57f2b
Date: Wed, 9 Mar 2022 02:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646793984
