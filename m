Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5628210F5
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660541452;
	h=To:Subject:From:Message-Id:Date;
	bh=7yBVIIh335ImpDMsrZP6n+pXRxLw4qYYnLXZrMnqAxI=;
	b=WQUCruCLrpZTBAxsQcuRKq8pEaTleRe+24evchmvVUyUL93TpX5TuaQj+GH1/qzB
	VicKWgm64pilmgW8lNQhBB5irxRm5Hy26njzVe9yoBcMuLj3kfIdw99Tua/a4k0g5y/
	bevxGbGfgXlNfdREqt19DzxAPg9FuY3MOVQOFMzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660541452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7yBVIIh335ImpDMsrZP6n+pXRxLw4qYYnLXZrMnqAxI=;
	b=bqR7xUw3lpyskboMy7/6XwU+n6NYcy95nSTKmOytj+jkyoqL+2990t3idOFBeoNy
	EBudCspfPtd8AvrSnHUpMpVjzAc9XPFzxzbBtDRewl/UuB+/3G6/cD02J+diSPCmIHv
	U3Bd2hWfyxzww3lJczAfUjwW2o7IbVVNzWECANQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ffbc132-d62f3a4a-9d38-40d9-808a-45f4d74f55a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 931c02f498693b30b618b9654f9f3074136ba3321620481fcda8ac821c208a55
Date: Mon, 15 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660541452
