Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889F17B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661350852;
	h=To:Subject:From:Message-Id:Date;
	bh=HK3zvHSW+O1gv5wR+FO5hWaMCU0KH/6D+1Sj9PjAUf4=;
	b=SuoO7blIbZqJfDG3o/vH8+wjqf22i3wLvrKfHloFeEKtUhY8RhefPPlRKs29quCw
	AOa2+jH8NX2IfnfqhE+X6GHksJgAVprY76INQBVwlV/5Trxujf7wsqoyT2hJbgjfyGJ
	6q1F2E4RElT1U5mhTYq2U8kFgAMc4zXiwhn0rfr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661350852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HK3zvHSW+O1gv5wR+FO5hWaMCU0KH/6D+1Sj9PjAUf4=;
	b=L8OSdcjoIALNWrvYOPbgTKBZk48qWJEk7YeA5j5sKsy8JAdR0DOicOH/vn0CjchU
	duQ85hO2sT00xzX27Lm/czcG4mKg21p6GWD+ch7C8G/GA3McvxCxQqmDqDVVrbiXGN7
	vy0G4H7KfWN7LOb4I8Tx78zC1mucKXlabVAc3T7g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d03a3814-0bb3eccd-3234-4b80-82ec-1ac5130074be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: baad84b4409b3d6694ba51d74febf2ad82ad6ad7bf02b25e2166857c69c7be1e
Date: Wed, 24 Aug 2022 14:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661350852
