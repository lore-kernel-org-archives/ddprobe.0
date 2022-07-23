Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF067E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658570212;
	h=To:Subject:From:Message-Id:Date;
	bh=Rdiv7u2v+k22wS8Gu5sQiODsct62JObwPNc+tGuTzQA=;
	b=YADU36zA1hs0ykO6oITbYCV1SwB0wbYmObfym959fx0FT6YjemGvSgMnoKfj4tDJ
	/cp1WRFduln++EvSdL3skk3Ege+Rh3EguyTZwXOtXiCLLiF823D+9kg4pLUI8KfLOr4
	2iUx8rgb/eWEE27ioz94ftBHd8p9UFowvB3D/0Vo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658570212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rdiv7u2v+k22wS8Gu5sQiODsct62JObwPNc+tGuTzQA=;
	b=OKHRQecFmioMfK9xZN8DGG+2Kf6ShQl0Os8iFmM/l2EZqmxWGd5VAbTwjnXtlJ8b
	O6vpwRzv5lEkDcBevMDqoupiOJV+L/0gbvmXFh4btMaXHUYmGXWQgNS4KzmscLYQdjf
	bMM5TUOnkjTaS1nKz/NdvXnUZxwMGAVpxV6Clb0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822a7d03df-5146704c-b28a-425c-8310-67d87f605f8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4bc4a1a3ea88a107b6a190b1f39d39f3436e7e1214f7d278d72e74b22c6c62a
Date: Sat, 23 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658570212
