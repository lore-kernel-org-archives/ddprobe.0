Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49815CB
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660084252;
	h=To:Subject:From:Message-Id:Date;
	bh=5CI4Dy2Sx1aweK4r60fLthrLsfT83QmA7c326cpC0DU=;
	b=CojJY7o+uxBBxAbXe0RBnZQR5jWoXtgqfgu7XAc7J0WOpGIk3ZFVzcu6OUDzMy3N
	igc6COKY1heopB/QY0+269YBKpx3YmYAJgbhHW4fjDyfzIf+Xg13HGlQbLwoQnpD+yH
	nzDSZ3AHDJ4XsavQLcSey2Kye6/x4RZWpmlyW+mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660084252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5CI4Dy2Sx1aweK4r60fLthrLsfT83QmA7c326cpC0DU=;
	b=Zk7OVOqen8cNTwSXu/BI0FNkk+0H6ZfzHFDgj6LJREE4hNvvkZ//XwDLF+QM+6X7
	+GQSpK68e6Gw6l3Q/Abn+WlaJVaap1SwAusIJuJxtcNW71S1yk2SxsmTmoJX+dkRENp
	3Y1pb3qHXhLen2Uia0fdU9LVYs1j+bcHOyF2oetM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018284bb6f8b-faa18bec-df3b-46f5-bf91-633b67cb9110-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 101f9489330497bb64e55481ac3d73e61b57c1d170e91292c2bdb23d1f8951d3
Date: Tue, 9 Aug 2022 22:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660084252
