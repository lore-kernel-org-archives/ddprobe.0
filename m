Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182BC2F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656263812;
	h=To:Subject:From:Message-Id:Date;
	bh=xXNql4h74Y9uN9bhE9gwTITQyTS0oBuoNk92Yk6n8QU=;
	b=EeSJ9hM6eUYEcAN+QRbnwP81jwTf/x3WWSNtFDedN3vG97gFAeX0sBSwrvCoiLH9
	bXVM8CKr7VISVAZU1CUlATDOgdnspqPA79j9RP7qDKDaI2/oboqAKcQW6zJn75foM4u
	R/ql52fK81zR3z7bbuVQIWMoezJrvkHaLalXb9mI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656263812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xXNql4h74Y9uN9bhE9gwTITQyTS0oBuoNk92Yk6n8QU=;
	b=aI+wx7GLfgUzU64zeEtpTyWPmkWQnPOmzHhvZOEWPZHcbm1goSmUih7KwIBH0va0
	6+YiOaSBXK2X6guU/sRHaXNGgwnqwx8hrd6n4uJY/MCnhGoUCfyOHcb+4ND2ZGIGvUo
	iGAEQ5imh2FPfu72nH7c91ijzwUO5DBphW+XnFMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1042505-2e601043-45e6-4dde-908c-6547d013967a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cc0cd01d1a54d44a80079e6f714eb48227b98f49a526a5842a780552abe3630
Date: Sun, 26 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656263812
