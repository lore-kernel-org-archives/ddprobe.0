Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D50010E0
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658929253;
	h=To:Subject:From:Message-Id:Date;
	bh=+2LOq424SrMc0Jp4zz3rrH+nJyJeR7pth6PIzTqoeT8=;
	b=ibKClK1ciUDS20HG+KS3q+MjdbabbEiqn7gZ+MBtumhHvCwK0Yd47xcFKpso34S4
	VC0s9ij/1Bmg6hvIiT30azW+D923Ir6v4rvVdJhMlCOcZRfbzrc4WXOQaEhaF5StbWi
	MOt/0mE7KzCmDPbijLZbr15tICde+TXiHYNTL6z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658929253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+2LOq424SrMc0Jp4zz3rrH+nJyJeR7pth6PIzTqoeT8=;
	b=WETKMtyIxzAkXe8S1FS+/gVGwopkzdG5oUQlhfPnMgx0sbYsuGJ64L4HFzoWnfld
	N/n28PB4Po5FAGxiTHo0S2cWxYg7GhTfGCu0+EZ8bCsGZExh36zO8Mc5qI7SM3N/35s
	in2q/dHKcUzsgUS7QtxaEQsAjpnm9ttaUESN7Guo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823fe388bf-558cc3d4-ffd4-47e7-a776-3586c6be2684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf91603558ee340f2aba71bf3acb77e282a3359ad0926dc55ca023aae80ec57f
Date: Wed, 27 Jul 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658929252
