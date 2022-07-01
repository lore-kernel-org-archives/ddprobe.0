Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CBE1850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656672412;
	h=To:Subject:From:Message-Id:Date;
	bh=zOpoe4/HXFzU++QydgUdb1XsCP+eeIFJiAqdjzNKuYc=;
	b=cog5FGwb7kcNk8MJeQ7KbaFteSrqHb3YaofdnLfThtgo9Ws7gHzfrQmBClhHMLd0
	OWHcjPjN6dkKE4kXrbyKAHhAD4IQEwTxgI2b5YWazrErqaykcQEO69jILfcmvsfCNWs
	LC/RUGHv6ycvOaATIcyUp2nZ8a5+qjRwdbE29vzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656672412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zOpoe4/HXFzU++QydgUdb1XsCP+eeIFJiAqdjzNKuYc=;
	b=WaH0j8tUXdfdg8mUn3guhPJaoYHMG15mSY2HhSz7Awi9bvGV7Mj4rb4zu2qwR/f9
	rf88d5X3TltsD1BxJc5a1geaZApyKC9/1r7aUAJ4QPmcOXqS8p+PzTEbp7V+ndYgvRq
	+XHa+YutMFJPuRyZhKusmzcMICHzAcFB5Ivx7Wk4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b95ee2af-75c39286-18b8-489e-932b-abed03146311-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31a7873d0a2d6f4ecd07c4ae47bcb73d8d7cd10c5d094add7bb108f75d702037
Date: Fri, 1 Jul 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656672412
