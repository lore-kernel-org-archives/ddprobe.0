Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9018B7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647000084;
	h=To:Subject:From:Message-Id:Date;
	bh=W9EvdgF+djSnVyIruiFafQD5h2OWKWq/0dhXll8H5Yw=;
	b=LaAfDL0RuONkuU0saIgeda4rwGzBHr+3FZSgT11R7m2R8ajvUEe1aEPqX8VTtQMe
	2Okvk0rwZwRHNCqW8GK5ZtzESxSvNgOksM1WrUtGssIOgbjSeTghrwnFwOegZqZBtB4
	5xMU6BUn5bWa8dTygm7ziANfQge0unpGE7KN+Y9o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647000084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W9EvdgF+djSnVyIruiFafQD5h2OWKWq/0dhXll8H5Yw=;
	b=N5QofrVeR+hRblLFW41On5PRrjLmGry9PpbIjBNA3V19JfWR+MGHOOQ+WEwX3oGA
	3uzUjT9Neou+m8N1RP46GoSxNccukRrR8oX6acAuuJGWC2/8f/5OItZqoe+pNM3O+6c
	bISYgaP4qFQxrpuvlYApoaTpAmEQ2tjekPSXGumE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f78dae0ea-2345b15e-45f9-4eb7-9a5e-45fc9acfd476-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bf81e3cb58f72dd53a45a5d0e4860588eb87e351086b1c32df840aaaa58dac3
Date: Fri, 11 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647000084
