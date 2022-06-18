Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9E97B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 20:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655582639;
	h=To:Subject:From:Message-Id:Date;
	bh=4cSgdyC9myk9tIf3RRUGcxUYBXxDZuRGDATcdWluYvg=;
	b=BTYQGvW/9JqikKH138FmxShJZGedqWqKzaDCq1YSRWhdNGrt9yY2sHCUbZM30AB2
	YP5047cJ/aAome5ja0wVzCNqxOkxUnf/7i08BV9WgTvDBMwf88tTUHaxFJUBttTG1pU
	8vOgHbDOwVEfsRc15NPjN864CgUyiNR4KS19h9y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655582639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4cSgdyC9myk9tIf3RRUGcxUYBXxDZuRGDATcdWluYvg=;
	b=KGlSjQjWLvn8sgX5QiJ2Om+eRdin6Mwx0A2h1Da1y8aNaCNz55eX9h6bS4ZWvwPD
	x8EzBfHNegGys2oGvw6ZRJk5wIw6WpfntSt5gqGWhZ9mSlyAhnDGFnidyGAoQAjKAdN
	IeHuwREgXB58NGjtaGSisiRLuhBJdvtQhMrY8kbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181786a44d3-1966c026-be8e-4462-940f-b91f43e19887-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81687bfb5eea5d45e22d32c97e3fdaf1fab58762ad3c826f1e21c8e4a52cc271
Date: Sat, 18 Jun 2022 20:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655582638
