Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7901823CB
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660715452;
	h=To:Subject:From:Message-Id:Date;
	bh=cYDXUYWmT8KSMsXpbDr5FtoDzObuPkfgGebkiYCabPA=;
	b=B/lVBc3Eq5qB6UA3f8QgXoNzK0h7ZWnbQ1HSdS5HMFG3XxeLmtBy3m4eIpL/wM4V
	2C5XGfOb4HDgSD/OMsjfqq0UspHm87uixGwL1LR/wcEDkXxOjz/D+PTvb1fqRBz+MUt
	c3Phjk+TkqEIC2r+x411UQxX2iuC6AjKMU0UD858=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660715452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cYDXUYWmT8KSMsXpbDr5FtoDzObuPkfgGebkiYCabPA=;
	b=Z+bea4Vy3YaE+jaGqtXsXqcte1N3QbG1t8EUgTCZDcMLR3ZYI5OSQM9TEmIfpoIY
	q5XeONxLeF2UVL6+qoR8wSoUkKGyB53kSaQ9e3Ql0e4Q/IG3BJjgPeSvXfQg7C7zGbh
	d6uMyU1SHoTouGxubqxMSG3zNJsnAcCIxuCdxhrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aa5ac87f-2981a9c4-e644-4425-a3b8-70f210f4d73d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e1233ccf9e851477c8015f94980db853f6fa42068c06b1fc333a423438db6e5
Date: Wed, 17 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660715452
