Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094B846A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656100012;
	h=To:Subject:From:Message-Id:Date;
	bh=o7ooO2l7tW30CS3Fqoo0Op/OmsU5YFkzbt/S9Gx1qdg=;
	b=MyWxNT6pZZJkNzV9uU8heklEsS8RU4Oq3KEYvyO6//ItmCwKKDErPtWAYMJxtM/H
	vL7gqPg90cGRK1qg2o5A71MuzmU8M4MMuisAT7ZEfMCUeWrwwsIvliD0/2y6ffzQyWx
	8hPiXY2am3043CsV5nl8nybYRs90lQ9R0nfuJUyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656100012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o7ooO2l7tW30CS3Fqoo0Op/OmsU5YFkzbt/S9Gx1qdg=;
	b=eHw9eeAH4nUNHU0swLq6khjbIjfitPPdTPUjfOn2LtM0uPWiqp5hUBAybpnSkFyT
	3tbGmQYyOP2NzVh3MRdFhheqifCJLlSnSIkhfQfykZGw2tkur9RHfdkjDQleHXB7mN7
	wkd5mcf9GmTiwNI9vBDszHC8/Jn3u6xQXrXqe11w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819740c10d-659e5082-15ae-4370-abca-fe2009d4f472-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad7d726d4cacbe2baeb02a9baa90c2247081984c7b7e42e017b1de35cc61d288
Date: Fri, 24 Jun 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656100012
