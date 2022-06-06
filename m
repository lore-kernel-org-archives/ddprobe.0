Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF86F23BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654507979;
	h=To:Subject:From:Message-Id:Date;
	bh=R7kqr4A6r0a1+l8VwpO9XSYn5eUlZEQ8D7kwBWLvTEE=;
	b=k0l2iA6wODEmfakxDJVWPe63VV/au9UQEPs1UitExm7OBFGf9MSOETllu0bHIsje
	XfcjopBF1vj16l+no31+2L0deNt3E4Rl0ajtkFzuCyHZn7nq9D3JhMSInl6rf+XLE53
	3o07CfxUfmKAliXz8ERQ9ZbGZiPBJeXOc1L6xY5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654507979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R7kqr4A6r0a1+l8VwpO9XSYn5eUlZEQ8D7kwBWLvTEE=;
	b=H2/6WXLmcDllj1qP5TZrEiT8l21YNAhOpm9D6rX+mM+PgpIz/sqxiZ9hcDP/DLaF
	WgoATFAxSaYTzrj/XIaqWdN0NpogrvPlOYK4TtBbZ0D/vNYwGlBgEx4B407R6m8EH75
	zvdvxl3irZd9LZSLqImosvBytbjI0F/Ff2X6AMvw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181385c41d1-fc8d409c-476b-4e7b-b1eb-3a2d46883dee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e08f392acc2a78eae32b8b1d70665076625ad4df10dca884501a0ee76d1a17e6
Date: Mon, 6 Jun 2022 09:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654507979
