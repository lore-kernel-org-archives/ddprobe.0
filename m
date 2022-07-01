Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A84010F3
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656645412;
	h=To:Subject:From:Message-Id:Date;
	bh=YBUiEe7fpmkQUC1n2SiVVJ2A1ppK+XuW6hpKjq/wOw8=;
	b=EFA6RAR2zOpzpAwcF8Sxpqrr+TNGD/PllGGq2B0os/iTLjrg0Xhn52Gq7moIERIf
	2KmfbFeNYyIn7dMx7m5nkP8pdAJNA+Jtip7OzUEf/9qF8HgEofRTaEylLg05TTXXu3L
	Hw1eWPmVx26ZTZ8/FbhUwjTrBoIPax1VYBCtq6k8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656645412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YBUiEe7fpmkQUC1n2SiVVJ2A1ppK+XuW6hpKjq/wOw8=;
	b=fp+YO6VYgHdWRprOCSnja/xqc/OLcfCDqMF4/dPrjH0EsIu1D88yIM8AuHRL12s8
	BD7EcMdUH9DowlzaFqGTJqsywruuUjjkUzNbRaQqZE6KmBZKVY3JqX9MrWzqc30DoiS
	EZsUpkurg9f7PUjD3o0QMsUjnF2RDGVZjncuSYxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b7c2e5be-07ae386f-04d6-456f-9ddc-c8ff041603e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0709bd38388d25da6ef9eb818e09d3e2c798342586b530c8633e70256d33887d
Date: Fri, 1 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656645412
