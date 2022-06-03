Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E82B1A5B
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 07:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654240979;
	h=To:Subject:From:Message-Id:Date;
	bh=YeIv3oPuOMZdYgCDwq2Ja49MVaPkw0w6TMVnylGsAl8=;
	b=QZlE9v9f6S33E64r7914XxO29oftYk7K0S21gTqKs8nLbIajFYpGWWz5ddpyZSyt
	irbwPDCH42S8r0sSd+G1l4OOfA5+/AGbBKi5iZe4gS8C5S1Y/v+QzQKbWk6jbGjWrYD
	uo6XcWIUVkSCstILTFrfiqhHVud1vjSZb/ws/URE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654240979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YeIv3oPuOMZdYgCDwq2Ja49MVaPkw0w6TMVnylGsAl8=;
	b=E6M3XLJFspqS0HGdw4DHJvb/CwFcmZgWp5IjQeCa8Dt0rGJpvpkxpj3e/B0UZrGP
	+ePZmiEaRU1v5krDpfeli3cZ6aX6DO7lSt/fSPswQBs9Lm4a91eYLs3qsWyn+yNz7bz
	VSe1unt3UJGwpetQxbFnaGLOuV6b6Hs9ys5L/2DY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018128722935-5771dddd-dac5-4081-b128-7ce6b3fedb32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52cb304dc4572d758bfd58ffb68a923a9a21818320b713b4c6bf4f283bc2df31
Date: Fri, 3 Jun 2022 07:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654240979
