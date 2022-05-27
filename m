Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C2AD1851
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653635279;
	h=To:Subject:From:Message-Id:Date;
	bh=rlIlnSZE2iU9pZthqu4RS402P/4BFoKbp+66wNoiI3I=;
	b=VeOefsJdzqSrSzEzjw429PTuie9Whu7ZzTjeSpulJ+BTimVlF7QUz7Tfce7OZiG3
	Mu0Cj/o8Ag/ypZSSN96HDOC9524NDOfy5ucwKbh6rhVcyhNRwP7MO5lR7dcW2qWffgl
	tTVs79aDFM94sf8X0D0z4W/BrkjSt33700xT+TqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653635279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rlIlnSZE2iU9pZthqu4RS402P/4BFoKbp+66wNoiI3I=;
	b=IDQgXM5KdXRtbtQwsa1OB/big8AFHam+qGrEq+umfmYWARpCLKjJBo/h69N4FyjI
	VmTP++Qy6V/AYlWILQ4KvEYzIHS7K04qYTkmtvV3tgaB3TQjVbanLO23aoeneoHZg1A
	XZ+97K3D72ImRgRmreRXF8W24FHLWzf3X5ztY5G8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810457e999-9f1a25d4-d750-4ceb-80af-488423fcc4f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3caad02b01c9a84d9d9b8b5f7a51e5e9babfa95823ea1b226e25202d1d5b738a
Date: Fri, 27 May 2022 07:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653635279
