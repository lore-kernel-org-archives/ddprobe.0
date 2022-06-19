Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4AC47B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 18:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655663159;
	h=To:Subject:From:Message-Id:Date;
	bh=9h9N/85jT7k8XCI8ZCjB7RsV4g3X5+mb4xDVkd/4Pt0=;
	b=TpAkjUcNF62VZbW5C0bfFKfpqlYdr5gdMnXMSDkkhA9z7EhYny4LqMnRh1kLDfDD
	6KAxmNDWjCKRBXDKeF5E6lhfWt0EitXz2Z0na89eFjHF0GNXe3XgDYiyobTBUT9+V5i
	CvxRaVPGftHTRHQ96GfJEXrdw91REmFbhIMkTMLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655663159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9h9N/85jT7k8XCI8ZCjB7RsV4g3X5+mb4xDVkd/4Pt0=;
	b=Hha07h02R+8oZLJcycB733MHn+uz1nbZ7u5/xQjltxyhvm1uarLRNoHo97VK+FTL
	G1qyXpAwmbHKbyBRaXDGk5QPDYRG5tN3qfh10EFWsfUiSSP0jQWDQV/qXUOxES5aYFo
	4OA9SHrMGc2uoM6Py1F9y1KBMVsWJaUXPBa9u2sc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d36e7c7-4f8e4284-8e7e-431a-a2bd-039e812442fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 501a6a7d94af26714d905021634c5c2c13b10a1c5b195fae8917bf792c5768b5
Date: Sun, 19 Jun 2022 18:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655663159
