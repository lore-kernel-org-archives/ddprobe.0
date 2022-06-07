Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3412A7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 13:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654609079;
	h=To:Subject:From:Message-Id:Date;
	bh=KHuxMYu3DdoCKdegPrJ6iW3lavH6xALkfwB13qfYj/I=;
	b=VJ4/UKH27jD8VjfNoZlAEQBO32uecUQL1QfEsGhAT30M83WnC9qj1jZH1WOa4awB
	J+eNnShDwNfe6hhPdTbRLMiA6J9vi5Yna08jH/0TD8NqyCkpbuecXiJ/kDl/IgRUCTg
	29aKbUPQ3OF5y+Xg8eytBWWF+CR4iQGS5mw4yVGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654609079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KHuxMYu3DdoCKdegPrJ6iW3lavH6xALkfwB13qfYj/I=;
	b=L7R0o77X2zpN5veHI/6mevIO+zMO+Y6h7UxUBl2a0sa/xlFxBRI+jt1Wrr3Td3QB
	eprKmLghVIBapg346dVm30FHf4KGXhkuNveWr/l2J4gW6dKd8oFcJCVQO39eOwGeUib
	53KxYfh/E1JIKj3ZhgSrQR77lx8tbsOHVsJkOVEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e62ebba-63aaadea-b053-4a7a-94c6-0a1fe59cffcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18905575ea451a107d6bc9528545630135b47e1d024e93e1ee91ac62ff6cb6ec
Date: Tue, 7 Jun 2022 13:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654609079
