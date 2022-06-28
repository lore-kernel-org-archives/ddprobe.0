Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087C53C05
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 15:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656429412;
	h=To:Subject:From:Message-Id:Date;
	bh=xOmG1kyzjQck8YpjFWG0KGzSGRuohVzhLUD1tD0fAOk=;
	b=KE+neytsCNyfrwmK4CfsYA5lchOSjh+N9geGVKTJY9+UgTkAiAXO0uiQxhcJv25U
	zkWXSM7b0WOkhh62LY8IoEmewfbm5spqFp24lPhiTjzghQcNVPPfIbJNJdireN4zOeM
	lhEWWBgZv23yybpgBTgSiOWo9QItsIvI7DKUMziE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656429412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xOmG1kyzjQck8YpjFWG0KGzSGRuohVzhLUD1tD0fAOk=;
	b=ZCia4kbAlxS6IpEwCz7Jw0/18uM1qEaqzUOVlV+gC1+x7npMr3rpkMZ65f8P8cxv
	8j9s76k+9kLvUa9Q7L58XC04EhfR5X3Td1jjI8bLE4MCWiRf0y8jeMr9p9y0W136vp6
	GKtKbBazY3zcdlMigeAm/0EG29HNJJQSsJ3SwD64=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aae2ffee-368475f6-06e1-417b-9ab6-b2a748b8e9c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2167a3e0d4343e8f5f86cad6a4d9eee53869f7eaf8b5462daff39918de6fa730
Date: Tue, 28 Jun 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656429412
