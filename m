Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F46B1FD0
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659929452;
	h=To:Subject:From:Message-Id:Date;
	bh=0qEWOET/Uma9PQdZ7/AmRHkO4kLuFRk1QfhyilmKlj4=;
	b=irRXb6s2K/NRybiej0eLVMEmk5UT4QX/rzKuIs4XZMLkg4pVGw9g+23PmVre24Yn
	paV5UUK1cb+HOLyq1d1+kIg10GFpGq/YwIMIyIbxBoui4/k5Gp7gXuqu9pJGKPg+1PS
	T3TFNNIWR07sVr07xhIZybB1b4m2LLnDBdYMD2pU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659929452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0qEWOET/Uma9PQdZ7/AmRHkO4kLuFRk1QfhyilmKlj4=;
	b=cC1tAyjAhNsS73XIHlgn+CovyDbVe/ZvfSxUzupmIei9zQXgGA+s7lq9ymaAnmFi
	gnhT5UYchmhdxP9cOQMx32whijrC3OCtIHq5ya0L/I+N+xmuG+7fAEBDpb1MMst3ZdU
	JGEy0lJK4pS5A2VNoqMs/Zyve83zGPjI/PtQxguM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b815fd2-4f8e0f49-6921-4c39-bd8d-f3078909cd8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a31aadd213245032e245d1fce637696e27a0582b5be1b186ca1bff14de132ba3
Date: Mon, 8 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659929452
