Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216F03C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659279652;
	h=To:Subject:From:Message-Id:Date;
	bh=jF/5KWTF0IybrJC39e036eoLByaIugcU+8yntz2WpZE=;
	b=Sg0tvvE805IDbrUee8D0W9NBb0/7h0DleA/WGIUu16rkhR0QGeatzNBQXg8pJkrs
	6eQ4KEMd/6hfLaqFqvzDSe3gejqUAZLioCDLxICS2qs7/1FAmigmUvNfIQfWmxoAbPP
	uOT2yGtkK0uLqhpmDIUyZD3n50DfSMPw8A1XTi9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659279652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jF/5KWTF0IybrJC39e036eoLByaIugcU+8yntz2WpZE=;
	b=GdSWqrEb9oVDCiM8g0GoGQjlnJ0EsmmwWyOxmmXCVnrpAHYMPK79wiBJbnGz3+tN
	fJDG0tDLIOALFMc+PwsTftmYJDMJAvCkxYqHgZp4nPzIryuq3PM8u9Cb6t0op5PKBVc
	ZXC/bL/bWDKXe7h4lP+fpZUc99zfe8c8khlojtMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254c636b0-d792f4cc-1c6e-40a1-8703-fe1b9f914642-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7c0c12e7f148c5375bb04b8f84ec91717ddd6334f3f1fbe28e48293cd90410f
Date: Sun, 31 Jul 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659279652
