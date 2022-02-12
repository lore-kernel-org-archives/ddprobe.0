Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629E67A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 19:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644695442;
	h=To:Subject:From:Message-Id:Date;
	bh=oZFuen+hpjg/Ddut5RQFgI/ncb/JDuJmR7j9b5n6oYU=;
	b=kc7jQ7Mi8oPMR5xUMBwvcgo0S5/mL7L38hwnG8rF8rh24OzVHfB5EST3bM9Cw7Qr
	Pk+LL665KPmE0lnbB7+O2HtQ4cIo9YGoKRediOLUkPjpCgnlSRK/dWwdF1YolgZCTbx
	wGgdNaOn/ojdHBCUukm4NQ3HmxiUWk0epRGdpt/U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644695442;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oZFuen+hpjg/Ddut5RQFgI/ncb/JDuJmR7j9b5n6oYU=;
	b=F5qK+RGTgSY1S9pl7PX/VEeVraST6pTUy0084Iw69hs/Q24OWyd+6/XqzDqf/lKo
	mXE2q0UtPGCbsgx2/jEw+MT6xAExQJUGASgMQur/y3TNpN6Ye3TuYw2QWiV/lcKwV/k
	fkPcfgCI4QNdQFymBur7g2aq8d4I65kvrSEEJIMY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef7cd484-1a2e21b3-5488-4a54-91ad-2dcf15f76a1b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e2c21f88ad1f605befbb8ee97360465ed6e85a4c48e8bfa07d57f7cf40e91e7
Date: Sat, 12 Feb 2022 19:50:42 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644695442
