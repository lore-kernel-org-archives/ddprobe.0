Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB12320A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660345252;
	h=To:Subject:From:Message-Id:Date;
	bh=of7P/7Qwz+Uf7xAiscCLbSkxu4umJJ6rD9d3m3UlTvY=;
	b=Q6YieiC99+CGOcp2saxQf1E222k9V07oWuCJQXKvCppqc4kYL8fQ0lE0gjtEnPzF
	s+8qUMDcNvHVqaltUnQmKEMnksObDF/hQ4zBZaQHMle2+7kGovUhx0NI+55NUCI1yN3
	NPhS29tr8l51+imCu3bnRpL27DdYw/DLO+igDl9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660345252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=of7P/7Qwz+Uf7xAiscCLbSkxu4umJJ6rD9d3m3UlTvY=;
	b=NQxwAS0CQBMv6ZWszVkkuyhSXeyx3umicx+xUZ0snRwm2VPGTF+COb43o2p4AbWu
	IgeeYOLMDzWBJrKrt2kFzp9FdOWHwkShWlIG3Z/YgjHV8Pmia2mHcVY9IclW6EUNcYu
	9kiSGE1E0NiXV0IeqI6GnjCzc0fCISCNJHIbCZUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829449faca-a89da39c-ac90-4c9e-8650-a9056612af39-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3a9882597d18f524d7465b06e540b18808028114dc13becab8d931db371dc8b
Date: Fri, 12 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660345252
