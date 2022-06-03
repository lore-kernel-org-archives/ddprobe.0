Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC07E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 21:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654293299;
	h=To:Subject:From:Message-Id:Date;
	bh=upgmIecCFNv+MXemi4KVBWKQz2jnMv+eEzhvqgOwv/Y=;
	b=QpDlA1RcyYTMxKzoppmjdkEodXeR6YU6vWDy5sg/Jcy2QGntJF3grgkSzWxcxDCd
	TiK2Qq8aJupc58y9KPQa2+q5RurXcRKkvLNkBVlV5PkJEKndWFDqE2NEY5CEQ61XOm+
	7q2w3R08H/Rg/Njwbgy+nmuAWkiCtUnz7J/FId50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654293299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=upgmIecCFNv+MXemi4KVBWKQz2jnMv+eEzhvqgOwv/Y=;
	b=FifFFB5jw9tVyl1ZBA47i2nwiFJZXN1OSxz1P1Mk49Jd+vjMqkqq2+mXTaQbkBHc
	NGPEOqW3yEQ3ZsQtmu788gEwRjObkfpwBS8ZtF1vAbqbeqgy1Hw5vxc256yLXeX8k6Y
	V7BtIt+/KoHupIb9VbOEdlGwhmwV6rB6gi65TxV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b908074-a94e88b7-1ebb-4ffb-9c9f-b60db5351e79-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10a0ff71d78a2545b44e2f29dba2a441ec66908a83e613f4b777fbdbb2cc34ae
Date: Fri, 3 Jun 2022 21:54:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654293299
