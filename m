Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7979C5396
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660605653;
	h=To:Subject:From:Message-Id:Date;
	bh=TZDzsTsvobw8TivL9AYAsRGlFknMuwUIyO4UpngEljA=;
	b=jQFYewnktU76yLn3xmxxpk8cy0Y5NrCcmg5QtmTFPYYyOPLaDtaQMfLH7taFglkg
	zF9ckrqCHmx7FZhlkkjLztwRz2XqTAHAOfn4Ao26ZlGrEDsmuazE83k39gDH0g3CHjA
	QI3onktXkH80Mc11yVL1FEDLYr6nxOCwVoB7iH/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660605653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TZDzsTsvobw8TivL9AYAsRGlFknMuwUIyO4UpngEljA=;
	b=D2vsy35EUCqWOFgvyzcUGUCrDHKQtrOL3y1luKY5gablv+ma/sdxExIxbKlh89KO
	bFzlrsBsWT6tA0lmoBIHDc95SF3kZXUqt4FvDrxr++9BDTrBkxSmBXHuIhmAfdhFSCC
	eo+moJlkJaf3ZipKMDzSXj5iGCNt9+QoUT7uNFI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a3cf5e5d-a70f62a4-a7b2-4792-9041-7c26237d8a2e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f243a11d9c26541f66ce86bcc67292cda948ebeafeae88965cadf900d703dd
Date: Mon, 15 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660605652
