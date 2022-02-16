Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96AB1FA7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644993385;
	h=To:Subject:From:Message-Id:Date;
	bh=vcPk1wwjEwLH9G7O2Qxhf6MNUWKwTFmpdhECQW+kiHA=;
	b=MNKWjT9/RH7+J5Ov5Tvng4wdgTv7qeYZLdWQZukXVhH+4EwIiC499PCpw1F7zPTg
	qMR5YGKMC27cljzm8mRskqJ/gekGtKNpqt0uYcqYgs0ydUq4dKmS8U6qDwgra0ZgOHl
	a0GrKsg4oFLBzZq9MUO4TbEUYArQcFfs81yGsGp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644993385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcPk1wwjEwLH9G7O2Qxhf6MNUWKwTFmpdhECQW+kiHA=;
	b=K3lZpbA/eEaps8X76r0UBv91rBij6nT/DVmod+1EvpRbCgtEKQcmD+Tgqnmais5y
	5EcvHoTPH2cStPLKTO6d2wtRwazFjzXsLD6rGr0cmqrEPesGVvbIZAysORDL5h9JcJt
	LDrlFI9E//BZpPlxjzaPgDGVJHgBDO5WW90lu/OY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f013f1131-cc3cad87-50b8-47fb-b5a0-b40a15476217-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8f57a91b652edd8c75ecfff2381122ecef5ebc6d7667e0d54af60e0e21a7e253
Date: Wed, 16 Feb 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644993384
