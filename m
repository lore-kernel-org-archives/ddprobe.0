Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C55A622
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647147684;
	h=To:Subject:From:Message-Id:Date;
	bh=6opek0UzNrrBtm+z6mYfAv7XTk/nxXBvXUcXSYK+gPU=;
	b=fpbc9LWmGEm8kvsj86CiueczpT0pGaT9d/n+vqFG5Hcz7yZhb/DEjkyol/H30s8k
	MPbmPe3OhN5BYAndFn5E1ZBycjGHgw012j4BH4jcKd4BFTyZzaCe51dJ5WrNy1+DZhZ
	7PMmn1Vof1ZAxfS70drWzB3v9WSUbioAYNEOWOms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647147684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6opek0UzNrrBtm+z6mYfAv7XTk/nxXBvXUcXSYK+gPU=;
	b=KkkbGtIDAassPv5szajTifFFo1xfFM6wJmRdyoq8fbWfs3xabUbnofwwBi8F8Ee9
	uYcrZBkc2rtMd7yAwkWxm77lJVoOwRH8sdCZF0jX5cJd6wVjwwX7uy2fIrsf5v48rhB
	5u7EgBBNivMnYiI7i/RybX5Y/1u9ba83Pu0Vn658=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f81a7136f-ad3bebd6-ded3-4853-9a56-e24f574a22d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d19b946902852c8d312ad89d5ff1c8fbc52c950e69e02d14ed87fc416bca2dc4
Date: Sun, 13 Mar 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647147684
