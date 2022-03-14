Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ECF610E6
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647234084;
	h=To:Subject:From:Message-Id:Date;
	bh=QecnTW7GeSoJtXzdVRn0r1EZ0XoBUihkcGEeMzkn7mM=;
	b=Xv+C29LaRr3uhP0fJECoVcvaCh+/lgbMpPuvD6O6Y6n/KsAWDQ7OnflwQ3AQQOIB
	nSA8c4NMoeOBFGTGs0ZFTLMKK0nuf3ZGWEiEci30tP7+wJj7f9TetQqxrUJj/69075l
	741cGCMUndb6tUflUpyoHXe0DKLNDwJ287U5TGyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647234084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QecnTW7GeSoJtXzdVRn0r1EZ0XoBUihkcGEeMzkn7mM=;
	b=dx/XLYpIEHzcGf/pmuczItY9p/ihDyTkELPfCj9b/bJ8NCHQz8YD8gpz+1EW/t+O
	W9l7DoOZeUymhvviSn5y4dhA1RFmhwdDbvv6KVTIk6Mtl7lTPiCtB0750oSaH0etwUP
	pzbl2mzWMCg93razfTOae+42S3gvUoJDgX6PGw5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86cd6fa0-3af9a376-0036-40c8-b4b9-fd54c636890c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad8913463ea6a19a30c58be022c4adc548adc4ed4cd1916e448c5f8aa6dd8466
Date: Mon, 14 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647234084
