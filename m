Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459117E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645459884;
	h=To:Subject:From:Message-Id:Date;
	bh=pZKTk/ihK7L6KAMMabtfaa5E+NhLq8cb3QP3fETdUAI=;
	b=SwUY51/OzmqR0l+dfedupdSAMr1k/zO72XUxJMAIXlemODvj7b0WuQtgk3rY4kHe
	LdfMuyVYf2jzGUhriVJt5LSDZ7J5VcRmAaolDB++tdgFDpwmFSLUjvuvDz+2EH5AAg3
	C4a0jGKJmmw+ODO5jLUG6uBcnWUObl9dVu2UE858=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645459884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pZKTk/ihK7L6KAMMabtfaa5E+NhLq8cb3QP3fETdUAI=;
	b=MZ+5khc21UPT/jNnJtLDR6Gwb8jZIcF2mXrmLf/4eijZBdWkG2Mclb9OFdZmM+iX
	g1hy82xuc09Gb8fzoqLDXnpqiJT9Pvo4ZJ5dWreTgEwOZAkAHPVy2tuHfmSMUet/Pas
	DneO533+69RVk2E19hi20kiN3u0NtJ8L6+PQkB8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d0d4ac2-2c9a7912-d4f5-4667-b162-351e2b7dc1d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44f68bf96f4f3b8282c3b374f657652143e13cfdf163e9f84d176e734386caca
Date: Mon, 21 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645459884
