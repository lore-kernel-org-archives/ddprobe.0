Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4367B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645368684;
	h=To:Subject:From:Message-Id:Date;
	bh=3DT0c+31EawRx8svb0Jb8jG4tcZXrSFSViaTqP+9Mjc=;
	b=QgPPigNjiYfi3VW5mmW0BRc/i/DJe73STWUoWNxsAlc0A+jfOOnK7BZgMpgkKRh6
	2rbVkVkXTrejBqipoYnmlodbNhsr2miOirUKobclb8AZmeWj733tn2DutbpORo/iuWZ
	LhgxwbYmooLY++6cl1ONDOMkq4izb536W4K3pcjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645368684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3DT0c+31EawRx8svb0Jb8jG4tcZXrSFSViaTqP+9Mjc=;
	b=HX6Il1vsR4ZFQTSzavKxbQqnFsHFh/6SZgVcnzmf5CGfW1RdNEGDQBl3kZXnCyBO
	7sVyRxXk0D1fstWsfOaN2bNB5Tjy7Sl0C934oIEPUSicMboL5SvlXVn3/S+yaov7A7I
	bsjHdv29RZRbFAAX0VXtzQznqIyupE7KbpWsK1k8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f179db0d9-3854687d-824f-4f01-a05e-e41f84236b59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb6c823c5bc19252115cd7ad8d723bd6bc5fe0d35e68bdfd0fa8c8325ed80bb4
Date: Sun, 20 Feb 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645368684
