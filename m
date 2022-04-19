Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB89ED4
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 11:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650366418;
	h=To:Subject:From:Message-Id:Date;
	bh=+gVErbDOUjjv3kp/E3K1Fs6jKnbPm9hYl5IndoljIcA=;
	b=DTa6/s58vtsC6pn+F547/HZkE8KOCQXcARMlsx9zTwHmbqW7PGbEZzZV4cCs6wdQ
	HW0Kgd9cbj5PxY9VQjhFh6E9g3AzHX4FKn7Umi7Z0mPMt7ozL1SswuSZ+pyzU9q+sYj
	hXRrXYFyNHg0P94hbQpRSyujsE8d83ES0dIYpHTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650366418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gVErbDOUjjv3kp/E3K1Fs6jKnbPm9hYl5IndoljIcA=;
	b=ZrKgcOwA4Ywfb9yxzZBRVtI8hqRSJe19XJQXmRKkyuVhI2NuZ1zbA8xLJHVVyYJQ
	+vdUGkEaDyBceuvx22Yg6d5I3h5kUtcut6EvVLRpve5QZyl9yDspa+GqR11t/VmoXUm
	+agzAsflTg8bvg1HyxN04C3tfvQ0lbDXRe1dl1xQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041810d71-2ea5a4c5-0481-4562-810e-bf8ec16961a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6631e319ce80105cca377978f236d36fde19cf5445570ff2ad02f5bf980bca2b
Date: Tue, 19 Apr 2022 11:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650366418
