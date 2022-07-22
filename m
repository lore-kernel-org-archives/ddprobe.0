Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D3F15A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658479612;
	h=To:Subject:From:Message-Id:Date;
	bh=R2N2pT7w4njBLjMEzY+TmqTDBHzNK+evqmBtMPHRcwI=;
	b=Y0U15DoUffEw8R6IaLaCbQBdjsUVRZPNyYQeovy8XoQokj9PsBir1t4Dh/gKba7W
	rPccaC85FHoHR3Qt3bQvblE9p2z/shB5gP+yAr0N/57NC/X2aLkW5T7GsBcJ6Jam7XU
	mRKEHiN89rP63EuKes80hphUC7nh0tvgeFG3UBiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658479612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R2N2pT7w4njBLjMEzY+TmqTDBHzNK+evqmBtMPHRcwI=;
	b=GdQ/T1R3cNiq02qELVk0Hs6g1oCXy6dmx2IchYBgTHgkJ6JFOfkBuj7ayM9aVzZR
	nuBoI2Er3ieH6sKjqii0NgMK1wTLuZxQe1zNLRXaPU1MRWhnAAXLohSrnyoAXdMjzJZ
	olTqVuoSRmq6KVzhUR27rQdz1QyMjayICv5TQb8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822516918e-4f4fd74e-e170-4422-8603-c3bfbcb22c2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fbb5569bcacb84b13d499f3139ffdc8b86462810c544f58523bdc859a98a4da
Date: Fri, 22 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658479612
