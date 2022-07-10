Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1270610F8
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 12:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657457212;
	h=To:Subject:From:Message-Id:Date;
	bh=BUlwOOyEl5JApEhmaP0+v1VnNxAkDqTKmNifQSkrwZI=;
	b=fSim9sauzWTV9/HB/nF13UlZ/6Zi/GR3tWv4EK+tYXe+Bvx1OxJaLSPWcgpIpyWj
	q9ejTMPXnW5tvllcJw4kncmtSUGXuweEsjfNugX+/iX7Em7OTReUTyLmzvzjhtHDiKA
	Xv+Q5iSDhFsMj0Gqk/xrbNxpsD93NMl2o8UA47xA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657457212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BUlwOOyEl5JApEhmaP0+v1VnNxAkDqTKmNifQSkrwZI=;
	b=FZhgTqqOL4UmwZx6shkedTh+yJXVBE7DLqsea8ZwXKtxtvja5f0gA0tuotLEeV5H
	sFTmEr7lVx2oiFNmmDUajQQzBrWy4JqLf4LOWQFd6eAGwsyQn6sBmrK5Usdzevit0GK
	qQ9lxOg0v/NWd4yFOTsh++iRMj62UvvmI4G6AwFU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e825fbca-beb7b422-e4e6-49ff-bce6-04441aecd88f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b98e7d6dd4c769c56286064212e4d78e46e3cd0b5368c1348a2d0bd7dacb503
Date: Sun, 10 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657457212
