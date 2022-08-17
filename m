Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC41C7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660720853;
	h=To:Subject:From:Message-Id:Date;
	bh=/u9DyET2AKjoKhRYnQbokuXjpiEuuAdxcgy/YxLbGOI=;
	b=ZWv0BIsnmmNgQDBEeZjBJrzzlX5HsBufDP12VVGsyu4S057FIym8bqn5wkkPM0XF
	x5VllKsSvL3xev1sU90zWilpnWCOL6MQnzLbEvKZkF5TEw7lIVei6RxzVce5jEiJgPZ
	4x6UiTGHijsmuPxGKAmNKVwb1W9V4hUEDNLwDYeY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660720853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/u9DyET2AKjoKhRYnQbokuXjpiEuuAdxcgy/YxLbGOI=;
	b=GfqJqrSxDxz919CyWfIJxUXbt91/h2cGyDjQLBLFlLNNHU9PNkfkjxdwsv3aRbYw
	/yqKdisrm4zkZR3OFiZVO0546Ynj/ByZvSv1V2e6RhBs6/KZeJu6FhibenUq9S9q62o
	KUjjriBqCxXZ7A8eLDqlo0Iblc4prriUrwI19F0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aaad2f0b-c9e482f2-955a-46b5-83ea-13a18e39ade6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c69766acaa64b9f55d27c3af4759ce261d3b736deb47eeeede8a3900eec95e37
Date: Wed, 17 Aug 2022 07:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660720852
