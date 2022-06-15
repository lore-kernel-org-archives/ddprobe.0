Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC78146A4
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 00:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655253599;
	h=To:Subject:From:Message-Id:Date;
	bh=Xea2w/XcXo4an9Gaam6hb+158Ok2l9v9MUubWcqxWM4=;
	b=iX0FMLc4kS9q0YJbDsgFvPmMiPNudARC6zB5eNevbDQ+t2CrLUBjmheuILrRcur3
	2mIDNOT24UoMudgP0nJV8UJ1thnR4/QBWbm03Iz7dmz3qasuW2N6Z1kbTHWhj659Ou7
	MfoQo8+1tTAtfqUpw7mpfqY8WWJyTblvtfjPXGzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655253599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xea2w/XcXo4an9Gaam6hb+158Ok2l9v9MUubWcqxWM4=;
	b=B9meLUIvAbfzVHEqFDWs9ryzfh1cGbRnuWuyCNJ7a7VO+3idhkrjGSrf7qcshqu7
	xsBYVEv6goJF3FPh1uW17yFMAZCI1nWzMutZ5/ZpEsali/PZCg6eDVCAYboqXoS/XDV
	K3J0Ym6KENcNksXs0zG8Yy95McjScz8JVO8/7OGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018164cd8403-0e27e5c8-c95a-4a44-b3ed-32ad20632fcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ae779fb17190bb2a2fb0ae837c543cdd17caae685612b6feff8bca7f02bda56
Date: Wed, 15 Jun 2022 00:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655253599
