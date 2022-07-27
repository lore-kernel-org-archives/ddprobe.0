Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670E43234
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658958052;
	h=To:Subject:From:Message-Id:Date;
	bh=vLhwF3gZlWinJ4XnnGh6sPOZXNWb1A3JIEzwVWFuoOk=;
	b=e+0QSxYXC8q69uQtPHsLtCYCkHKQJtyP4xPmRraXNZseekmYK5vqZ67oLuZTVu0u
	wtIb441gHNLpdmzLY0PEx6+kfxt3fNzjTnsD9OaF6iKIaX6TNlK6RAQAWJeugzOMgTM
	3tQ1LBCD+unohHv+sRMKoHd1ZzAYCfHGRUxy5e4c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658958052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLhwF3gZlWinJ4XnnGh6sPOZXNWb1A3JIEzwVWFuoOk=;
	b=hs4gLjhHb9n+FuN7RBsm7xq1OBvPiZTMAsmny5jHA930lMGD50io3EOehFbHcNS9
	MFC6OQV01AlIIlxUbfuzpY5W6l+xv5X9JGgOSXZOgD3h2rKiH+s94S+KIl1Ildoa4bm
	qFlxd2km9yq9BNNZ/u6Prgk3kefZDCWfolFiXDn0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182419afd35-3784b0d1-9988-4787-a79c-0c8d5cb0a0df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ce88108a986d43e9b6fa0498027c25115dd352bff3cc89a30bae46e637bead6
Date: Wed, 27 Jul 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658958052
