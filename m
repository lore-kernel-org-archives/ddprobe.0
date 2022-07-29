Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CBC110C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 19:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659121252;
	h=To:Subject:From:Message-Id:Date;
	bh=lZ/PYp3iOoBjrhMFCdZKAiUYBQZ85hN/Hjq8N+SsEKY=;
	b=hwXOEnszg0E2pZR5T28XL+Et+U4M7L1rPpTg0ukiVXk0/9LjIpD4Pltp9cZDEA1Y
	R0gCO3nhv3zW3mZ6CpFuHQhQ1HJYV2M8B9FopJzEfUsJ+VqvFOhPMKDaWtmqP66eyHg
	qF9cvC8eHES9pnTMliRV1n8+GiaWtfrQ2yBCdYdg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659121252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZ/PYp3iOoBjrhMFCdZKAiUYBQZ85hN/Hjq8N+SsEKY=;
	b=WuiY3uBdSn7DdCC8z65azJxHNQ0I1mC3dEyYnwZNFJCLmu8vpWgKzVqQB4pfzG9Y
	6p5CVRjJV5GiT42cjPrOiIPCaQ8wQREoMNVouMBAL97Br+7L43ZdVdxNDA3r1lhEGJW
	KNWHsLmIJgHDD+gGlhwWQFmLFSUCQ48jCVDuaNhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b5538d2-b4e1b29a-3513-4693-bcac-7ac671571a60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8929074a24a48e2642458ce0cac8125e2fc6bd21b7638cf1be7c15e69ac8d8ca
Date: Fri, 29 Jul 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659121252
