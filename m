Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B05E28EA
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658397412;
	h=To:Subject:From:Message-Id:Date;
	bh=Q2Uh/EA/VVAlKkISsAoPBeF9cyElGNzsZaeKV85sa7Y=;
	b=jWGVxvLUYq3WAEBHjl71CVuQSIbshEoa/FoBtE4H0Tl1bNwTpaTwVsO9eiOF4z1c
	TJShW5u6BR4rC4ZeK2brCv7RmdMr7X5sc3jsBKtgK7FQG2eLWPkMqskI81nHloc/30k
	OCohfmpv3tvyVjA0cX6DIvpxAmaPlxdtVjzkv3u0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658397412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q2Uh/EA/VVAlKkISsAoPBeF9cyElGNzsZaeKV85sa7Y=;
	b=HMgklGJ9G7oVBCECl9Xfgfs/5KzUy4JkCebHDjy50k/duAW/dQ5klSsUW8sQ9YT6
	nIPmira1GPZxygKx73I4qbgBSogXzghv5ziIwbn37T1W6MNVSl5Fbgqxps68i/UDARI
	IiWhWdcERKZ3GEXAnq37y0/iChKqVeG0bQhkvalc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018220304c03-1de6a512-5623-46e6-9b6d-9431513a1c8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85983a63af79ab6a44ecd1749da542bef39db5e500cd36e4ac38eca3c7078f23
Date: Thu, 21 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658397412
