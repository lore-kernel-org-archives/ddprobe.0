Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178A01FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 05:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656827812;
	h=To:Subject:From:Message-Id:Date;
	bh=XsfNmhF5LmnrM+Bpum/P9vaVBmzgdpyD3fiLgJAPzgQ=;
	b=LPhdaVBLd/ccK/29MQPF8YdhzQqqde5iCXPpggwweMi7e3fBlVBXSuN76Fpur8ei
	Irt43DUr099McZcI2uP6srkEpS6nDNuKTCaxKGK5kcD4jLn6ednnOSnW3AuXXCcuDOQ
	+mG+RsWPelG996qk7oLUlU4p8o042MWwtXTNkkpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656827812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XsfNmhF5LmnrM+Bpum/P9vaVBmzgdpyD3fiLgJAPzgQ=;
	b=MZaCRaDPBcWibswG5WxOEYtZBOmRSN36VDXec6xFmdOHSQOyzy4iRzPhWh5fgmyf
	2Q0w0jPsFHKko2UiOAZO4vtXE53paLcuWqeWc14hEFPMNMAJhT++G3/kUmZSfj4oa/r
	dEBKToQJ8tKtLwZlUxT2HyzWZqTlP6RBrJLNZO5k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2a21a1f-e6ff9fc8-340f-4cb2-986e-a799f05d3de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dfefa3092b67c9a61fc14a336eb38541f327a08f9432da4fa6663866e1caa87
Date: Sun, 3 Jul 2022 05:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656827812
