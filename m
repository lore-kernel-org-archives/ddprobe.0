Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8120D23BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659942052;
	h=To:Subject:From:Message-Id:Date;
	bh=gyvom9M4RmLhxYI1uVb5BU6IZ1VsBx3AkUBjwUs+1X0=;
	b=Ldjdx5t9yM0O+hgpeRwuvXnG+ShdzlRO67zzN7QS2QsEEZkmjc4zSM00Kc/atJqT
	/i1pMHYdt3WLNPAZ9+OQjp4TPz7m7IDem0TkCMCky2O05rTCwgl/GxOk95tLTbU5f2y
	eqOVJ2dT3IV2GpK/M/lVKoKlYXbTQ+1IePiX9ZQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659942052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gyvom9M4RmLhxYI1uVb5BU6IZ1VsBx3AkUBjwUs+1X0=;
	b=NsUt44s10JpPzIALH5f/A3wjciKPLc88DyLO4QEWW3ONsCaaSIhoZgFsbGOqBJbr
	Bscy0C7w4cfjvwxOLgdQIfPSP9gGg0xKQ+Ue5Z3JxNOyw0ktAFPSZjGtmykcI8tzwZi
	1CjLyR1rKLuqmOX9aON64ia74ADNqd3rn6czGqrw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c41a2d0-0827a475-e288-4a1a-a3a7-264f072eb368-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ce2797e2aa38f51ac57e01e08a39f247c023e75c681db03d111659e0030edc0
Date: Mon, 8 Aug 2022 07:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659942052
