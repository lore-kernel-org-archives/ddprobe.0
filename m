Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643D110E9
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658221612;
	h=To:Subject:From:Message-Id:Date;
	bh=WZPqLKxYTJLdL82lFnKRkzGtMQOTNyzRppv0GVWsBYQ=;
	b=LJZWAjCXzQ18laQwPPGdWLcZsEU7s7q3UkE7AW47c5yI0n0SHBHpD2YLvoypdKdl
	zS8O6bbGbHARyKswX7ejcmOjmzvt8kSOqW5LYypK/Ljwl6c0A/IFF5dePhpo/CurICG
	WwEUKjCFT9Aq54zHP7Wl97/PsBvQMnXhtw6PBJgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658221612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WZPqLKxYTJLdL82lFnKRkzGtMQOTNyzRppv0GVWsBYQ=;
	b=e4CPzeYJ6usGu+1fzyWKWbwyInDBKMM/Cj95hQEhH79bqsV+GME6T12H37UlA8Ti
	CHg1gc8pdeHX0/d9eFAyZ03eXOxGeeyg9YLRUJTCJtJk+Jc+m3lmSoXkCQk4iJN1iQp
	P9gJOOxDhoeLQy+d/IOeLfoLLH3sdeZVb9F9NIzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018215b5ccf6-347b3cd8-536a-4bfa-b61e-0dcf983beb4d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85d68a13596090e2f1d888e92d5c0b123e2d912bd6c17f03ad5d7a62f65317fb
Date: Tue, 19 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658221612
