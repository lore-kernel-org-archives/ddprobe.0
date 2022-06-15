Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1F2E7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 06:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655274659;
	h=To:Subject:From:Message-Id:Date;
	bh=nu7bOTOYIB4WSzx73ORELLD37rS/JD+7gHm1z60JVes=;
	b=jVGV35x91RLofMCYEnL/CGuZfY62ucHgAJyMWNemrQ7QCGLLGba5efZIypsqH21d
	s/4v4+Wh3S1HgcHb7b4t91NNl7c+do0SZTSpz5hRVfhnsz5oNbYKHnxIa3tNliRcpix
	3XyKjw4Ft3/k1bP6K2TMUtptFShRSCj0DXPWkuB4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655274659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nu7bOTOYIB4WSzx73ORELLD37rS/JD+7gHm1z60JVes=;
	b=X5ahYaoxK/RMYPrkzfPAWZR7Y85NfGyl4z3LVBEZ9OAhaz5OZrggtXBr/w8cHyrd
	wVqeLq36EoiskJTtwMF0N0v+EvX6kPErNubmvjyGGi3kIfNq/t578xbXXfKwK6LgrtF
	SnEzhNSILJcDsNKYQRvlR4LHfCOAdHpcYHHChDuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181660eddc4-53ecf916-fd00-4efe-beed-a2f8884db860-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 02ef05b001b4824f54a8a509073255441c6db66246ccb5e4b8526e8e800706df
Date: Wed, 15 Jun 2022 06:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655274659
