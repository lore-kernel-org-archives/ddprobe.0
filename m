Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E1A18D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647649885;
	h=To:Subject:From:Message-Id:Date;
	bh=WmS4h2rQkgHqN8nOKjzDWtDBwnOl/Xz9bZI3XdTYLtI=;
	b=ctfBt05ZkeVB9Ht7wdZ7WyMvmPVDaVqf60METfnCQmax1hMnooV6A8/HBAo1y3o/
	zsIcQ9eQza9euejjJH8Ik0ASLUezzt3eVJBsiZ/Mz5j7qKxpq/ihGHTFU8UBuH6ls/U
	tnv4FBgHpvXOen2ZTxfltGo151wUvrEsTIib6d3c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647649885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WmS4h2rQkgHqN8nOKjzDWtDBwnOl/Xz9bZI3XdTYLtI=;
	b=B9HfGHdp4owMTlSbGjVZgepykaXf2KOfPSGSL88OUjuI3DeQMpYEp1mC+PI3XJJN
	xgcenaukS7Qsm9cLblOyF7/vMYqMamGzw5vKs4eRDR7Kc23iVD42P9g6npE7/UQT2UO
	wqi8hrA7HClovm+SRr9NCvn1t+km4kmoJ6LtU7Cg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f960a9b-00b08ffa-aa9d-49d5-9c07-c9ca29aa9aac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7de68ee86772426dfad812ca59a7e002f1b80a3f4b11ad6b2dd623d5fd084fdc
Date: Sat, 19 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647649884
